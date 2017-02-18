#include <iostream>
#include <getopt.h>
#include "neutronClientStartMonitor.hh"    


int main(int argc, char const *argv[])
{
	/* code */
	neutronClientStartMonitor* myStartMonitor = new neutronClientStartMonitor();
	myStartMonitor->startMonitor();
	return 0;
}
