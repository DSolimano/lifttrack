#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=Cygwin_4.x-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/Data/Exercise.o \
	${OBJECTDIR}/Data/WorkoutSet.o \
	${OBJECTDIR}/main.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f2 \
	${TESTDIR}/TestFiles/f1

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lifttrack.exe

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lifttrack.exe: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${LINK.cc} -o ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lifttrack ${OBJECTFILES} ${LDLIBSOPTIONS}

${OBJECTDIR}/Data/Exercise.o: Data/Exercise.cpp 
	${MKDIR} -p ${OBJECTDIR}/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Data/Exercise.o Data/Exercise.cpp

${OBJECTDIR}/Data/WorkoutSet.o: Data/WorkoutSet.cpp 
	${MKDIR} -p ${OBJECTDIR}/Data
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Data/WorkoutSet.o Data/WorkoutSet.cpp

${OBJECTDIR}/main.o: main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -g -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main.o main.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f2: ${TESTDIR}/tests/ExerciseTest.o ${TESTDIR}/tests/exerciseTestRunner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f2 $^ ${LDLIBSOPTIONS} `cppunit-config --libs`   

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/WorkoutSetTest.o ${TESTDIR}/tests/workoutSetTestRunner.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc}   -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} `cppunit-config --libs` `cppunit-config --libs`   


${TESTDIR}/tests/ExerciseTest.o: tests/ExerciseTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/ExerciseTest.o tests/ExerciseTest.cpp


${TESTDIR}/tests/exerciseTestRunner.o: tests/exerciseTestRunner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/exerciseTestRunner.o tests/exerciseTestRunner.cpp


${TESTDIR}/tests/WorkoutSetTest.o: tests/WorkoutSetTest.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -I. `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/WorkoutSetTest.o tests/WorkoutSetTest.cpp


${TESTDIR}/tests/workoutSetTestRunner.o: tests/workoutSetTestRunner.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -g -I. `cppunit-config --cflags` -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/workoutSetTestRunner.o tests/workoutSetTestRunner.cpp


${OBJECTDIR}/Data/Exercise_nomain.o: ${OBJECTDIR}/Data/Exercise.o Data/Exercise.cpp 
	${MKDIR} -p ${OBJECTDIR}/Data
	@NMOUTPUT=`${NM} ${OBJECTDIR}/Data/Exercise.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Data/Exercise_nomain.o Data/Exercise.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/Data/Exercise.o ${OBJECTDIR}/Data/Exercise_nomain.o;\
	fi

${OBJECTDIR}/Data/WorkoutSet_nomain.o: ${OBJECTDIR}/Data/WorkoutSet.o Data/WorkoutSet.cpp 
	${MKDIR} -p ${OBJECTDIR}/Data
	@NMOUTPUT=`${NM} ${OBJECTDIR}/Data/WorkoutSet.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Data/WorkoutSet_nomain.o Data/WorkoutSet.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/Data/WorkoutSet.o ${OBJECTDIR}/Data/WorkoutSet_nomain.o;\
	fi

${OBJECTDIR}/main_nomain.o: ${OBJECTDIR}/main.o main.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/main.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -g -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/main_nomain.o main.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/main.o ${OBJECTDIR}/main_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f2 || true; \
	    ${TESTDIR}/TestFiles/f1 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/lifttrack.exe

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
