#include <iostream>
#include <getopt.h>
#include "neutronClientRequestAndMonitor.hh"


using std::cout;
using std::cerr;
using std::endl;
using std::string;

using std::tr1::shared_ptr;
using namespace epics::pvData;
using namespace epics::pvAccess;


class neutronClientStartMonitor
{
public:

	void doMonitor(string const &name, string const &request, double timeout, short priority, int limit, bool quiet);
	
  bool createFactory();
	void startMonitor();

  string channel = "neutrons";
  string request = "record[queueSize=100]field()";
  double timeout = 2.0;
  bool monitor = false;
  bool quiet = false;
  short priority = ChannelProvider::PRIORITY_DEFAULT;
  int limit = 0;

};
