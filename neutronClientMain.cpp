/* neutronClientMain.cpp
 *
 * Copyright (c) 2014 Oak Ridge National Laboratory.
 * All rights reserved.
 * See file LICENSE that is included with this distribution.
 *
 * @author Kay Kasemir
 */
#include <iostream>
#include <getopt.h>
#include "neutronClientMonitor.hh"

using namespace std;
using namespace std::tr1;
using namespace epics::pvData;
using namespace epics::pvAccess;

/** Connect, get value, disconnect */
void getValue(string const &name, string const &request, double timeout)
{
    ChannelProvider::shared_pointer channelProvider =
            getChannelProviderRegistry()->getProvider("pva");
    if (! channelProvider)
        THROW_EXCEPTION2(runtime_error, "No channel provider");

    shared_ptr<MyChannelRequester> channelRequester(new MyChannelRequester());
    shared_ptr<Channel> channel(channelProvider->createChannel(name, channelRequester));
    channelRequester->waitUntilConnected(timeout);

    shared_ptr<PVStructure> pvRequest = CreateRequest::create()->createRequest(request);
    shared_ptr<MyChannelGetRequester> channelGetRequester(new MyChannelGetRequester());

    // This took me 3 hours to figure out:
    shared_ptr<ChannelGet> channelGet = channel->createChannelGet(channelGetRequester, pvRequest);
    // We don't care about the value of 'channelGet', so why assign it to a variable?
    // But when we _don't_ assign it to a shared_ptr<>, the one
    // returned from channel->createChannelGet() will be deleted
    // right away, and then the server(!) crashes because it receives a NULL GetRequester...

    channelGetRequester->waitUntilDone(timeout);
}

/** Monitor values */
void doMonitor(string const &name, string const &request, double timeout, short priority, int limit, bool quiet)
{
    ChannelProvider::shared_pointer channelProvider =
            getChannelProviderRegistry()->getProvider("pva");
    if (! channelProvider)
        THROW_EXCEPTION2(runtime_error, "No channel provider");

    shared_ptr<MyChannelRequester> channelRequester(new MyChannelRequester());
    shared_ptr<Channel> channel(channelProvider->createChannel(name, channelRequester, priority));
    channelRequester->waitUntilConnected(timeout);

    NeutronEventClient *p_nEC_tmp = NULL;
    shared_ptr<PVStructure> pvRequest = CreateRequest::create()->createRequest(request);
    shared_ptr<MyMonitorRequester> monitorRequester(new MyMonitorRequester(limit, quiet,p_nEC_tmp));
    shared_ptr<Monitor> monitor = channel->createMonitor(monitorRequester, pvRequest);
    // Wait until limit or forever..
    monitorRequester->waitUntilDone();

    // What to do for graceful shutdown of monitor?
    Status stat = monitor->stop();
    if (! stat.isSuccess())
        cout << "Cannot stop monitor, " << stat << endl;
    monitor->destroy();
    channel->destroy();
}


static void help(const char *name)
{
    cout << "USAGE: " << name << " [options] [channel]" << endl;
    cout << "  -h         : Help" << endl;
    cout << "  -m         : Monitor instead of get" << endl;
    cout << "  -q         : .. quietly monitor, don't print data" << endl;
    cout << "  -r request : Request" << endl;
    cout << "  -w seconds : Wait timeout" << endl;
    cout << "  -p priority: Priority, 0..99, default 0" << endl;
    cout << "  -l monitors: Limit runtime to given number of monitors, then quit" << endl;
}

int main(int argc,char *argv[])
{

    string channel = "neutrons";
    string request = "record[queueSize=100]field()";
    double timeout = 2.0;
    bool monitor = false;
    bool quiet = false;
    short priority = ChannelProvider::PRIORITY_DEFAULT;
    int limit = 0;

    int opt;
    while ((opt = getopt(argc, argv, "r:w:p:l:mqh")) != -1)
    {
        switch (opt)
        {
        case 'r':
            request = optarg;
            break;
        case 'w':
            timeout = atof(optarg);
            break;
        case 'p':
            priority = atoi(optarg);
            break;
        case 'l':
        	limit = atoi(optarg);
            break;
        case 'm':
            monitor = true;
            break;
        case 'q':
            quiet = true;
            break;
        case 'h':
            help(argv[0]);
            return 0;
        default:
            help(argv[0]);
            return -1;
        }
    }
    if (optind < argc)
        channel = argv[optind];

    cout << "Channel:  " << channel << endl;
    cout << "Request:  " << request << endl;
    cout << "Wait:     " << timeout << " sec" << endl;
    cout << "Priority: " << priority << endl;
    cout << "Limit: " << limit << endl;

    try
    {
        ClientFactory::start();
        if (monitor)
            doMonitor(channel, request, timeout, priority, limit, quiet);
        else
            getValue(channel, request, timeout);
        ClientFactory::stop();
    }
    catch (exception &ex)
    {
        fprintf(stderr, "Exception: %s\n", ex.what());
        PRINT_EXCEPTION2(ex, stderr);
        cout << SHOW_EXCEPTION(ex);
    }

    return 0;
}
