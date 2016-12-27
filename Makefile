TOP=..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================
# Standalone client that checks sequence of events from demo server
PROD_HOST += neutronClientMain
neutronClientMain_SRCS += neutronClientMain.cpp
neutronClientMain_SRCS += NeutronEventClient.cpp
neutronClientMain_LIBS += pvAccess
neutronClientMain_LIBS += pvData
neutronClientMain_LIBS += Com


#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

