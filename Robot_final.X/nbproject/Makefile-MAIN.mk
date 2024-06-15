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
ifeq "$(wildcard nbproject/Makefile-local-MAIN.mk)" "nbproject/Makefile-local-MAIN.mk"
include nbproject/Makefile-local-MAIN.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=MAIN
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
ConfName=MAIN
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
	${MAKE}  -f nbproject/Makefile-MAIN.mk ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/MAIN/7a8f77cc4b7c7e04630a831d8e8382c8d926aff .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/MAIN/4b747f1f9cbde4a29d42aca15f4fb7e30179decb .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/MAIN/c9c6cdceb04faa728bdbef155696b1cf2b3ffc83 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/MAIN/1a514d3bc19e98be28ac54e483e8713f5dfdcaf5 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/MAIN/f0b2ff79ce8b3add5ef9946d0d818779d1d03a5f .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/MAIN/9d608f3f50279351b232fe2cb5d6729d42012547 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/MAIN/4926a89b3ee85f02fa0b771e26220982d81b81b2 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/MAIN/66c284242fdf5606fe0a98fea91ec1194bfdcbf4 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/MAIN/843472f5da29c617b0f3012d167f27ce78c0de86 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/MAIN/748ddf136ae4e9b675f25df725838854d6d86d79 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/MAIN/9983780adc5117e4971b0093bf8c7ed733efac02 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/MAIN/fe5880e2ba2c6d146d3dca6ed59ac2fe710a4257 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/MAIN/3c245244a59be046d2f9a783d55c1bb6f3ce012a .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/MAIN/fb9669113e440683a0d805ee0de80c479766b0c0 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/MAIN/3527c7bbb059d19b2176a32bbc752c68203b16a8 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TemplateES_Main.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TemplateES_Main.c  .generated_files/flags/MAIN/792f58703dd7f2acbf50f8d9d4675735e7e3f6b5 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TemplateES_Main.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/RobotHSM.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/RobotHSM.c  .generated_files/flags/MAIN/46e2d28c5fa783686f496ebf4bc642a2397a837c .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/149507253/RobotHSM.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/RobotHSM.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/Robot.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/Robot.c  .generated_files/flags/MAIN/cc0391e8985e92c0fdaeb9a7cc0d908d06227f7a .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/Robot.o.d" -o ${OBJECTDIR}/_ext/149507253/Robot.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/Robot.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/FinalEventChecker.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/FinalEventChecker.c  .generated_files/flags/MAIN/b7fc0d3a5865a651bd43718cefafd48d23ebc8a4 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d" -o ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/FinalEventChecker.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TapeBumpService.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TapeBumpService.c  .generated_files/flags/MAIN/3a1b853d07def6d76e8febea9361be7398bf15b3 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d" -o ${OBJECTDIR}/_ext/149507253/TapeBumpService.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TapeBumpService.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o: C:/devproj/MPLABX\ Projects/finalProject/UnloadScoopService.c  .generated_files/flags/MAIN/1dd98a6f7742b9786f0ba1b42f120b345c7fa8b4 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d" -o ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o "C:/devproj/MPLABX Projects/finalProject/UnloadScoopService.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowWallSubHSM.c  .generated_files/flags/MAIN/b9ef78aaf8697d1aaf1404fb82d936a321622e44 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowWallSubHSM.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowTapeSubHSM.c  .generated_files/flags/MAIN/7481a1c9c5b54928ea6a716be10aafbb1a23b2aa .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowTapeSubHSM.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/MAIN/ccf1548cc2b55749325fcc57ef4cdbde65774c08 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/MAIN/81fbb4e894b25b8042f6b26bbcaf47347f8b7fc3 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/MAIN/e911ed865c2bbee3fa29718dff3db65cf2ccf9ac .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/MAIN/7111611b6919a64d61230ce48e3ab1279e672cf9 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/MAIN/fad7d433919b3b52b07341ad36041fbc46e440ab .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/MAIN/bab845799278d539a572bf2c265db907d563892b .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/MAIN/328ff4224635d1527336e5ad552353f39fbb3339 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/MAIN/75b8091fb731ab0e1765e6f275783f20e61133a3 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/MAIN/3a18e4fe04d7e9d480453362f01ab4235c954e93 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/MAIN/c90dbfc63949b8db8b0f3b4d56d2351d48c13796 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/MAIN/97fb3628d76857f06d62c112b5d8ea328da9ad21 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/MAIN/b2e80ee68d12dfb7eb5083b6c17c420233812d0c .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/MAIN/2f0dace378f8ace587618ef38394acad1052ab17 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/MAIN/d58d7d3cba28998887bf1031fab3a3da10768b47 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/MAIN/4fd47cd42a7cd4ae97e7c9325119f18ea6cc56c1 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TemplateES_Main.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TemplateES_Main.c  .generated_files/flags/MAIN/6ff5115ea96227c3478ab72dd5846541796988b3 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TemplateES_Main.o.d" -o ${OBJECTDIR}/_ext/149507253/TemplateES_Main.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TemplateES_Main.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/RobotHSM.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/RobotHSM.c  .generated_files/flags/MAIN/604d0d5ea219b9991c34753df530f5dd1ac7f8a9 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/RobotHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/149507253/RobotHSM.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/RobotHSM.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/Robot.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/Robot.c  .generated_files/flags/MAIN/7238aac68a0cae4d41d5f2a96f1059600bd89f3f .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/Robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/Robot.o.d" -o ${OBJECTDIR}/_ext/149507253/Robot.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/Robot.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/FinalEventChecker.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/FinalEventChecker.c  .generated_files/flags/MAIN/5035199c96c4803f64bf95ea0682f38349974712 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/FinalEventChecker.o.d" -o ${OBJECTDIR}/_ext/149507253/FinalEventChecker.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/FinalEventChecker.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/149507253/TapeBumpService.o: C:/devproj/MPLABX\ Projects/finalProject/Robot_final.X/TapeBumpService.c  .generated_files/flags/MAIN/89e958501759221d5fadb5590ee17c50cf9b9753 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/149507253" 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d 
	@${RM} ${OBJECTDIR}/_ext/149507253/TapeBumpService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/149507253/TapeBumpService.o.d" -o ${OBJECTDIR}/_ext/149507253/TapeBumpService.o "C:/devproj/MPLABX Projects/finalProject/Robot_final.X/TapeBumpService.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o: C:/devproj/MPLABX\ Projects/finalProject/UnloadScoopService.c  .generated_files/flags/MAIN/ade7294e2e7a31b1e7479bc6d150f14745e8610 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o.d" -o ${OBJECTDIR}/_ext/1208933265/UnloadScoopService.o "C:/devproj/MPLABX Projects/finalProject/UnloadScoopService.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowWallSubHSM.c  .generated_files/flags/MAIN/b6c181909a8deaa663927475ad4f440a8bd11b9d .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowWallSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowWallSubHSM.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o: C:/devproj/MPLABX\ Projects/finalProject/FollowTapeSubHSM.c  .generated_files/flags/MAIN/f87b939f81abbf077db2e480cce8055154e87089 .generated_files/flags/MAIN/878f342f4f34d35c0a0471b4bd3baa19183a15c3
	@${MKDIR} "${OBJECTDIR}/_ext/1208933265" 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1208933265/FollowTapeSubHSM.o "C:/devproj/MPLABX Projects/finalProject/FollowTapeSubHSM.c"    -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_MAIN=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
