TOP=../../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += efsw

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install efsw.dbd into <top>/dbd
DBD += efsw.dbd
INC += efsw.h efsw.hpp

# specify all source files to be compiled and added to the library		
efsw_SRCS += FileSystemImpl.cpp MutexImpl.cpp SystemImpl.cpp ThreadImpl.cpp

SRC_DIRS += $(TOP)/efswApp/src/efsw/platform/posix

efsw_SRCS += WinFileSystemImpl.cpp WinMutexImpl.cpp WinSystemImpl.cpp WinThreadImpl.cpp
			
SRC_DIRS += $(TOP)/efswApp/src/efsw/platform/win

efsw_SRCS += Debug.cpp DirectorySnapshot.cpp DirectorySnapshotDiff.cpp DirWatcherGeneric.cpp FileInfo.cpp  \
			FileSystem.cpp FileWatcher.cpp FileWatcherCWrapper.cpp FileWatcherFSEvents.cpp FileWatcherGeneric.cpp \
			FileWatcherImpl.cpp FileWatcherInotify.cpp FileWatcherKqueue.cpp FileWatcherWin32.cpp Log.cpp Mutex.cpp \
			String.cpp System.cpp Thread.cpp Watcher.cpp WatcherFSEvents.cpp WatcherGeneric.cpp WatcherInotify.cpp \
			WatcherKqueue.cpp WatcherWin32.cpp

SRC_DIRS += $(TOP)/efswApp/src			

#if_eq ($(EPICS_HOST_ARCH), windows-x64-debug)

efsw_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

