#include <iostream>
#include <getopt.h>
#include "neutronClientStartMonitor.hh"    

using namespace std;
using namespace std::tr1;
using namespace epics::pvData;
using namespace epics::pvAccess;

int main(int argc, char const *argv[])
{
	/* code */
	neutronClientStartMonitor* myStartMonitor = new neutronClientStartMonitor();
	myStartMonitor->startMonitor();
	return 0;
}
