TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

### NOTE: there should only be one build.mak for a given IOC family and this should be located in the ###-IOC-01 directory

#=============================
# Build the IOC application efswTest
# We actually use $(APPNAME) below so this file can be included by multiple IOCs

PROD_IOC = $(APPNAME)
# efswTest.dbd will be created and installed
DBD += $(APPNAME).dbd

# efswTest.dbd will be made up from these files:
$(APPNAME)_DBD += base.dbd

## add other dbd here ##
#$(APPNAME)_DBD += xxx.dbd

## Add other libraries here ##
#$(APPNAME)_LIBS += xxx
$(APPNAME)_LIBS += efsw
USR_INCLUDES += -I $(TOP)/efswApp/src

# efswTest_registerRecordDeviceDriver.cpp derives from efswTest.dbd
$(APPNAME)_SRCS += $(APPNAME)_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
$(APPNAME)_SRCS_DEFAULT += efsw-test.cpp
$(APPNAME)_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#$(APPNAME)_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
$(APPNAME)_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

