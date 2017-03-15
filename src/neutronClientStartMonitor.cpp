#include "neutronClientStartMonitor.hh"


using std::cout;
using std::cerr;
using std::endl;
using std::string;
using std::dynamic_pointer_cast;
using std::exception;
using std::runtime_error;

using std::tr1::shared_ptr;
using namespace epics::pvData;
using namespace epics::pvAccess;


bool neutronClientStartMonitor::createFactory()
{
	  try {
	    printf("Starting ClientFactory::start()\n");
	    epics::pvAccess::ClientFactory::start();
	  } catch (std::exception &e)  {
	    fprintf(stderr, "ERROR: Exception for ClientFactory::start(). Exception: %s\n", e.what());
	    return false;
	  }

	  epicsThreadSleep(1);

	  return true;

}


void neutronClientStartMonitor::doMonitor(string const &name, string const &request, double timeout, short priority, int limit, bool quiet)
{
    ChannelProvider::shared_pointer channelProvider =
            getChannelProviderRegistry()->getProvider("pva");
    if (! channelProvider)
        THROW_EXCEPTION2(runtime_error, "No channel provider");

    shared_ptr<MyChannelRequester> channelRequester(new MyChannelRequester());
    shared_ptr<Channel> channel(channelProvider->createChannel(name, channelRequester, priority));
    channelRequester->waitUntilConnected(timeout);

    cout<<  "the request:::" << request << endl;
    shared_ptr<PVStructure> pvRequest = CreateRequest::create()->createRequest(request);
    shared_ptr<MyMonitorRequester> monitorRequester(new MyMonitorRequester(limit, quiet));
    shared_ptr<Monitor> monitor = channel->createMonitor(monitorRequester, pvRequest);
    // Wait until limit or forever..
    cout<<  "the first struct:::" << *(monitorRequester->getPulseData().pTimeOfFlight)<< endl;
    monitorRequester->waitUntilDone();
   
    //What to do for graceful shutdown of monitor?
    
    Status stat = monitor->stop();
    if (! stat.isSuccess())
        cout << "Cannot stop monitor, " << stat << endl;
    monitor->destroy();
    channel->destroy();
}


void neutronClientStartMonitor::startMonitor()
{
	try
	{
	    createFactory();
	    doMonitor(channel, request, timeout, priority, limit, quiet);       
	    epics::pvAccess::ClientFactory::stop();
	}
	catch (exception &ex)
	{
	    fprintf(stderr, "Exception: %s\n", ex.what());
	    PRINT_EXCEPTION2(ex, stderr);
	    cout << SHOW_EXCEPTION(ex);
	}
}
