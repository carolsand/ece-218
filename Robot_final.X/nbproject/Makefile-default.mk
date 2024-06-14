#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Include project Makefile
ifeq "${IGNORE_LOCAL}" "TRUE"
# do not include local makefile. User is passing all local related variables already
else
include Makefile
# Include makefile containing local settings
ifeq "$(wildcard nbproject/Makefile-local-default.mk)" "nbproject/Makefile-local-default.mk"
include nbproject/Makefile-local-default.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

ifdef SUB_IMAGE_ADDRESS

else
SUB_IMAGE_ADDRESS_COMMAND=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=C:/ECE118/src/AD.c C:/ECE118/src/BOARD.c C:/ECE118/src/ES_CheckEvents.c C:/ECE118/src/ES_Framework.c C:/ECE118/src/ES_KeyboardInput.c C:/ECE118/src/ES_PostList.c C:/ECE118/src/ES_Queue.c C:/ECE118/src/ES_TattleTale.c C:/ECE118/src/ES_Timers.c C:/ECE118/src/IO_Ports.c C:/ECE118/src/LED.c C:/ECE118/src/RC_Servo.c C:/ECE118/src/pwm.c C:/ECE118/src/serial.c C:/ECE118/src/timers.c "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TemplateES_Main.c" "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/RobotHSM.c" "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/Robot.c" "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/FinalEventChecker.c" "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TapeBumpService.c" "C:/devproj/MPLABX Projects/finalProject/UnloadScoopService.c" "C:/devproj/MPLABX Projects/finalProject/FollowWallSubHSM.c" "C:/devproj/MPLABX Projects/finalProject/FollowTapeSubHSM.c"

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1975241074/AD.o ${OBJECTDIR}/_ext/1975241074/BOARD.o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o ${OBJECTDIR}/_ext/1975241074/LED.o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o ${OBJECTDIR}/_ext/1975241074/pwm.o ${OBJECTDIR}/_ext/1975241074/serial.o ${OBJECTDIR}/_ext/1975241074/timers.o ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o ${OBJECTDIR}/_ext/149507253/RobotHSM.o ${OBJECTDIR}/_ext/149507253/Robot.o ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o ${OBJECTDIR}/_ext/149507253/TapeBumpService.o ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1975241074/AD.o.d ${OBJECTDIR}/_ext/1975241074/BOARD.o.d ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d ${OBJECTDIR}/_ext/1975241074/LED.o.d ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d ${OBJECTDIR}/_ext/1975241074/pwm.o.d ${OBJECTDIR}/_ext/1975241074/serial.o.d ${OBJECTDIR}/_ext/1975241074/timers.o.d ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d ${OBJECTDIR}/_ext/149507253/RobotHSM.o.d ${OBJECTDIR}/_ext/149507253/Robot.o.d ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d ${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1975241074/AD.o ${OBJECTDIR}/_ext/1975241074/BOARD.o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o ${OBJECTDIR}/_ext/1975241074/LED.o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o ${OBJECTDIR}/_ext/1975241074/pwm.o ${OBJECTDIR}/_ext/1975241074/serial.o ${OBJECTDIR}/_ext/1975241074/timers.o ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o ${OBJECTDIR}/_ext/149507253/RobotHSM.o ${OBJECTDIR}/_ext/149507253/Robot.o ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o ${OBJECTDIR}/_ext/149507253/TapeBumpService.o ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o

# Source Files
SOURCEFILES=C:/ECE118/src/AD.c C:/ECE118/src/BOARD.c C:/ECE118/src/ES_CheckEvents.c C:/ECE118/src/ES_Framework.c C:/ECE118/src/ES_KeyboardInput.c C:/ECE118/src/ES_PostList.c C:/ECE118/src/ES_Queue.c C:/ECE118/src/ES_TattleTale.c C:/ECE118/src/ES_Timers.c C:/ECE118/src/IO_Ports.c C:/ECE118/src/LED.c C:/ECE118/src/RC_Servo.c C:/ECE118/src/pwm.c C:/ECE118/src/serial.c C:/ECE118/src/timers.c C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TemplateES_Main.c C:/devproj/MPLABX Projects/finalProject/Robot_final.X/RobotHSM.c C:/devproj/MPLABX Projects/finalProject/Robot_final.X/Robot.c C:/devproj/MPLABX Projects/finalProject/Robot_final.X/FinalEventChecker.c C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TapeBumpService.c C:/devproj/MPLABX Projects/finalProject/UnloadScoopService.c C:/devproj/MPLABX Projects/finalProject/FollowWallSubHSM.c C:/devproj/MPLABX Projects/finalProject/FollowTapeSubHSM.c



CFLAGS=
ASFLAGS=
LDLIBSOPTIONS=

############# Tool locations ##########################################
# If you copy a project from one host to another, the path where the  #
# compiler is installed may be different.                             #
# If you open this project with MPLAB X in the new host, this         #
# makefile will be regenerated and the paths will be corrected.       #
#######################################################################
# fixDeps replaces a bunch of sed/cat/printf statements that slow down the build
FIXDEPS=fixDeps

# The following macros may be used in the pre and post step lines
_/_=\\
ShExtension=.bat
Device=PIC32MX320F128H
ProjectDir="C:\devproj\MPLABX Projects\finalProject\Robot_final.X"
ProjectName=Robot_final
ConfName=default
ImagePath="${DISTDIR}\Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ImageDir="${DISTDIR}"
ImageName="Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}"
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IsDebug="true"
else
IsDebug="false"
endif

.build-conf:  .pre ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=32MX320F128H
MP_LINKER_FILE_OPTION=,--script="C:\ECE118\bootloader320.ld"
# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assembleWithPreprocess
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/default/c7137873b8cff89ffd50f4112774c17fa1eeeab9 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/default/8290a662f9f70982598774709279e8baf9c639ee .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/85d5931240a6761be43edda14e554826bcdbc93f .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/default/f106559d6a6bf40389368569fc5e7d3d3b26526b .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/61cff1b8784d5cc20c006f5bc4cab554e88e3a7c .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/default/1bbe257819d7eb62d3488d736a2f0da20337cd60 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/default/3f5fd6111788f3da37c1a12f23f83ef0b921501c .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/3f28a399686175e60e6af08a9456f006dfa67d2c .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/default/45e149137462c06157d5bbf64d7da123ee469e80 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/default/c57824a728608b43f790f6107f2ae6cbd67fc6a4 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/default/e6d11f34568cd8a6ca7a923952bf77bdbed8ed57 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/default/e23515c138f80d65795765e8c0fa18d228ab8996 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/default/8db45058bed806189e069833d52404251fd1e968 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/default/16018533207974330a3ea64a95c7e036ad173ea6 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/default/1885c42f5699836a12295a4a87101bccdd7fc5e2 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TemplateES_Main.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TemplateES_Main.c  .generated_files/flags/default/d7b443cff06a9ea8744b65a24c553cdd480de7e8 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TemplateES_Main.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/RobotHSM.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/RobotHSM.c  .generated_files/flags/default/d16bc714ad2c2f1fa138c6b7c9880135e2738b97 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/149507253/RobotHSM.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/RobotHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/Robot.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/Robot.c  .generated_files/flags/default/d32850e12bdb770cb19de83cf19c924650042640 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/Robot.o.d" -o ${OBJECTDIR}/_ext/149507253/Robot.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/Robot.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/FinalEventChecker.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/FinalEventChecker.c  .generated_files/flags/default/dd8e81c99915afd9592babbaeb10acffa8e73a90 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d" -o ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/FinalEventChecker.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TapeBumpService.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TapeBumpService.c  .generated_files/flags/default/1ab190c25908aee02573bf23e5438b95dd113325 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d" -o ${OBJECTDIR}/_ext/149507253/TapeBumpService.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TapeBumpService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o: C:/devproj/MPLABX\ Projects/finalProject/UnloadScoopService.c  .generated_files/flags/default/c964286c44dc4aeabb878efdf05a9b6ec3c391ff .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d" -o ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o "C:/devproj/MPLABX Projects/finalProject/UnloadScoopService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowWallSubHSM.c  .generated_files/flags/default/844713a25bcf0c9182782a43f4ca833066840327 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowWallSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowTapeSubHSM.c  .generated_files/flags/default/4639ca14b70625dbf8e174b21af09228c9b84d55 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowTapeSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/default/c836b27d6af8fc7d340ef1cea10cbbc07042d0d8 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/default/52157d255ce5020c1895115269210bcc76cb89a3 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/default/c1ecdbcbbd6401bb36829db732ec0fd11f7adf16 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/default/bb2eff9377440b41bbab58725a2dd9e33132cf7b .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/default/9c278de4c2c2a5f4a1a1b86ccfbe367bae8d91e2 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/default/20728f97447a7d6441a722090f832067dd9443d7 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/default/8af98d32eb1de7ba1b7a320dc48d28131d706c40 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/default/3ac1a456f482beaa1b4bcd102d6692b2a721f77a .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/default/3fae079cee19ee476ef9f808cfc9cfd9e33b74b7 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/default/7d1ff0d2c8492ee44e3f34e45dfb3f42057f5f9e .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/default/9794939b43700880cdefdca5d3e85269226c6e4 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/default/98c1d3590aa112bb9044d1d57ab644db389fe40b .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/default/4a374dbd07f98a5b7faf65db95a252c45cdb2ffb .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/default/4f8a0cf0961490aedeb4e4260d8ba84314496d80 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/default/b9131f88bc6ab301c7675edefd5652e9832e824b .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TemplateES_Main.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TemplateES_Main.c  .generated_files/flags/default/723bd65f4b24efb648508607d7bbcc084af297ce .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TemplateES_Main.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/RobotHSM.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/RobotHSM.c  .generated_files/flags/default/97faf72941cb211a6d026aaa05db33419c759e54 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/149507253/RobotHSM.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/RobotHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/Robot.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/Robot.c  .generated_files/flags/default/1b8aa6861fb392b9243f49bfa1c9950b8327ca7f .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/Robot.o.d" -o ${OBJECTDIR}/_ext/149507253/Robot.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/Robot.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/FinalEventChecker.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/FinalEventChecker.c  .generated_files/flags/default/865ad003d35b2ec04a7daae3678bc108300ed317 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d" -o ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/FinalEventChecker.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TapeBumpService.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TapeBumpService.c  .generated_files/flags/default/eade5d148b49b18a93a9c8e9f47ecd9d24991d71 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d" -o ${OBJECTDIR}/_ext/149507253/TapeBumpService.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TapeBumpService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o: C:/devproj/MPLABX\ Projects/finalProject/UnloadScoopService.c  .generated_files/flags/default/dd05f7ef32774b3e6e049a2ff8db9a15487cbbf9 .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d" -o ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o "C:/devproj/MPLABX Projects/finalProject/UnloadScoopService.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowWallSubHSM.c  .generated_files/flags/default/a6effdf17f6dbcbd897ef01aba7f3af25b4f7e3b .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowWallSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowTapeSubHSM.c  .generated_files/flags/default/768229284c2f8637fae322457f1167d9040abb7b .generated_files/flags/default/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowTapeSubHSM.c"    -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: compileCPP
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    C:/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	${MP_CC_DIR}\\xc32-bin2hex ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} 
endif

.pre:
	@echo "--------------------------------------"
	@echo "User defined pre-build step: [python C:\ECE118\scripts\Enum_To_String.py]"
	@python C:\ECE118\scripts\Enum_To_String.py
	@echo "--------------------------------------"

# Subprojects
.build-subprojects:


# Subprojects
.clean-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${OBJECTDIR}
	${RM} -r ${DISTDIR}

# Enable dependency checking
.dep.inc: .depcheck-impl

DEPFILES=$(shell mplabwildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
