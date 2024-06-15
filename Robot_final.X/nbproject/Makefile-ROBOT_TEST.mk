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
ifeq "$(wildcard nbproject/Makefile-local-ROBOT_TEST.mk)" "nbproject/Makefile-local-ROBOT_TEST.mk"
include nbproject/Makefile-local-ROBOT_TEST.mk
endif
endif

# Environment
MKDIR=gnumkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=ROBOT_TEST
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
SOURCEFILES_QUOTED_IF_SPACED=C:/ECE118/src/AD.c C:/ECE118/src/BOARD.c C:/ECE118/src/ES_CheckEvents.c C:/ECE118/src/ES_Framework.c C:/ECE118/src/ES_KeyboardInput.c C:/ECE118/src/ES_PostList.c C:/ECE118/src/ES_Queue.c C:/ECE118/src/ES_TattleTale.c C:/ECE118/src/ES_Timers.c C:/ECE118/src/IO_Ports.c C:/ECE118/src/LED.c C:/ECE118/src/RC_Servo.c C:/ECE118/src/pwm.c C:/ECE118/src/serial.c C:/ECE118/src/timers.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FinalEventChecker.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowTapeSubHSM.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowWallSubHSM.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/TapeBumpService.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/UnloadScoopService.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/RobotHSM.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/Robot.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/_ext/1975241074/AD.o ${OBJECTDIR}/_ext/1975241074/BOARD.o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o ${OBJECTDIR}/_ext/1975241074/LED.o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o ${OBJECTDIR}/_ext/1975241074/pwm.o ${OBJECTDIR}/_ext/1975241074/serial.o ${OBJECTDIR}/_ext/1975241074/timers.o ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o ${OBJECTDIR}/_ext/1335717908/RobotHSM.o ${OBJECTDIR}/_ext/1335717908/Robot.o
POSSIBLE_DEPFILES=${OBJECTDIR}/_ext/1975241074/AD.o.d ${OBJECTDIR}/_ext/1975241074/BOARD.o.d ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d ${OBJECTDIR}/_ext/1975241074/LED.o.d ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d ${OBJECTDIR}/_ext/1975241074/pwm.o.d ${OBJECTDIR}/_ext/1975241074/serial.o.d ${OBJECTDIR}/_ext/1975241074/timers.o.d ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o.d ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o.d ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o.d ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o.d ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o.d ${OBJECTDIR}/_ext/1335717908/RobotHSM.o.d ${OBJECTDIR}/_ext/1335717908/Robot.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/_ext/1975241074/AD.o ${OBJECTDIR}/_ext/1975241074/BOARD.o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o ${OBJECTDIR}/_ext/1975241074/LED.o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o ${OBJECTDIR}/_ext/1975241074/pwm.o ${OBJECTDIR}/_ext/1975241074/serial.o ${OBJECTDIR}/_ext/1975241074/timers.o ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o ${OBJECTDIR}/_ext/1335717908/RobotHSM.o ${OBJECTDIR}/_ext/1335717908/Robot.o

# Source Files
SOURCEFILES=C:/ECE118/src/AD.c C:/ECE118/src/BOARD.c C:/ECE118/src/ES_CheckEvents.c C:/ECE118/src/ES_Framework.c C:/ECE118/src/ES_KeyboardInput.c C:/ECE118/src/ES_PostList.c C:/ECE118/src/ES_Queue.c C:/ECE118/src/ES_TattleTale.c C:/ECE118/src/ES_Timers.c C:/ECE118/src/IO_Ports.c C:/ECE118/src/LED.c C:/ECE118/src/RC_Servo.c C:/ECE118/src/pwm.c C:/ECE118/src/serial.c C:/ECE118/src/timers.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FinalEventChecker.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowTapeSubHSM.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowWallSubHSM.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/TapeBumpService.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/UnloadScoopService.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/RobotHSM.c C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/Robot.c



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
ProjectDir="C:\Users\cfiguer7\Desktop\ECE218\ece118-2024\Robot_final.X"
ProjectName=Robot_final
ConfName=ROBOT_TEST
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
	${MAKE}  -f nbproject/Makefile-ROBOT_TEST.mk ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

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
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/ROBOT_TEST/8bc7ac7edab0b28788219a283cfdd7c10fdadb57 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/ROBOT_TEST/49df8cce63a83a664f9325331556aac2c2eda8b5 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/ROBOT_TEST/d850d1f9840aa3ca584c51f21de888bf82ef9330 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/ROBOT_TEST/809ed4627bf307cc809b9f06d59f0f62632c058 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/ROBOT_TEST/6f28a7101abd97f967eef65785247c805f57ad64 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/ROBOT_TEST/427ac567427e249380b2af4ae65b9ad11db042c3 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/ROBOT_TEST/23bce29fc76d56cdc230b34009bcd7b4a9058dd7 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/ROBOT_TEST/f2852989f804f4244f333972337801784cb72029 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/ROBOT_TEST/be73c080e9edfbcf8c3ae701dc1c49a818bdfe6e .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/ROBOT_TEST/8e678cd793dd8093ab060a9ae8335081a9e6049b .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/ROBOT_TEST/3c25c895bc797f72a1f7021548a3c412b7bd61af .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/ROBOT_TEST/2b6812930d106d6898c71f3ef114b35c835d78e1 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/ROBOT_TEST/ca984258270f8432f347e67b1bbd1ff625ffc40b .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/ROBOT_TEST/7a684d66a1dbc9b4674d5b89169f99d5f0aa5987 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/ROBOT_TEST/b42d7250343b423ece90726068cefafa1af148a0 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FinalEventChecker.c  .generated_files/flags/ROBOT_TEST/b489843d6ad3e8046edcc182a5d6bf7708b77e3a .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o.d" -o ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FinalEventChecker.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowTapeSubHSM.c  .generated_files/flags/ROBOT_TEST/e7c9c1085c65bd770f5f4d564b235856a54c6dc1 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowTapeSubHSM.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowWallSubHSM.c  .generated_files/flags/ROBOT_TEST/8ff3f40add098f94835a5f6c45ebfb65c077dabd .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowWallSubHSM.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/TapeBumpService.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/TapeBumpService.c  .generated_files/flags/ROBOT_TEST/c1684169e30895c47b0baa887ecbd1036a8e334d .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/TapeBumpService.o.d" -o ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/TapeBumpService.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/UnloadScoopService.c  .generated_files/flags/ROBOT_TEST/6dd7cfc336b5f7583ae27f272a1742d7d8487404 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o.d" -o ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/UnloadScoopService.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1335717908/RobotHSM.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/RobotHSM.c  .generated_files/flags/ROBOT_TEST/88c00e5590afe5720b704376471e0bfb9bf402ae .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1335717908" 
	@${RM} ${OBJECTDIR}/_ext/1335717908/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1335717908/RobotHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1335717908/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/1335717908/RobotHSM.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/RobotHSM.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1335717908/Robot.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/Robot.c  .generated_files/flags/ROBOT_TEST/8a23381cfd785bea4914ecb6c93992c292c5ac12 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1335717908" 
	@${RM} ${OBJECTDIR}/_ext/1335717908/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1335717908/Robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE) -g -D__DEBUG   -fframe-base-loclist  -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1335717908/Robot.o.d" -o ${OBJECTDIR}/_ext/1335717908/Robot.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/Robot.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
else
${OBJECTDIR}/_ext/1975241074/AD.o: C:/ECE118/src/AD.c  .generated_files/flags/ROBOT_TEST/5e992d0e3be96be5c512b7eb5c3f5b276947e70b .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/AD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/AD.o.d" -o ${OBJECTDIR}/_ext/1975241074/AD.o C:/ECE118/src/AD.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/BOARD.o: C:/ECE118/src/BOARD.c  .generated_files/flags/ROBOT_TEST/110cfda81f6e009db8b72dbc3e57e40f3a52dfc2 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/BOARD.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/BOARD.o.d" -o ${OBJECTDIR}/_ext/1975241074/BOARD.o C:/ECE118/src/BOARD.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o: C:/ECE118/src/ES_CheckEvents.c  .generated_files/flags/ROBOT_TEST/db10ea17e8e0e31e29a04c7f461070f15a88216 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_CheckEvents.o C:/ECE118/src/ES_CheckEvents.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Framework.o: C:/ECE118/src/ES_Framework.c  .generated_files/flags/ROBOT_TEST/fbf57b5a7bf5bb289336e0e1e67596a5c5a01d29 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Framework.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Framework.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Framework.o C:/ECE118/src/ES_Framework.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o: C:/ECE118/src/ES_KeyboardInput.c  .generated_files/flags/ROBOT_TEST/653ed544f2cb98c1ef90619348ced0a609050518 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_KeyboardInput.o C:/ECE118/src/ES_KeyboardInput.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_PostList.o: C:/ECE118/src/ES_PostList.c  .generated_files/flags/ROBOT_TEST/1004ab05a14f6d9b50581cb37c135ac44605655 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_PostList.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_PostList.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_PostList.o C:/ECE118/src/ES_PostList.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Queue.o: C:/ECE118/src/ES_Queue.c  .generated_files/flags/ROBOT_TEST/193d5c4f64226bcfe6cc24fd0890b708a9ad4edd .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Queue.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Queue.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Queue.o C:/ECE118/src/ES_Queue.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o: C:/ECE118/src/ES_TattleTale.c  .generated_files/flags/ROBOT_TEST/d75abe66cf9cce2218ca0b9a0602715c05dfc513 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_TattleTale.o C:/ECE118/src/ES_TattleTale.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/ES_Timers.o: C:/ECE118/src/ES_Timers.c  .generated_files/flags/ROBOT_TEST/a4d10b416881f14cfe160db19c0aa23ab11226d2 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/ES_Timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/ES_Timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/ES_Timers.o C:/ECE118/src/ES_Timers.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/IO_Ports.o: C:/ECE118/src/IO_Ports.c  .generated_files/flags/ROBOT_TEST/6722ec7f2b60401e8c301ff199aa228152830213 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/IO_Ports.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/IO_Ports.o.d" -o ${OBJECTDIR}/_ext/1975241074/IO_Ports.o C:/ECE118/src/IO_Ports.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/LED.o: C:/ECE118/src/LED.c  .generated_files/flags/ROBOT_TEST/79da9d97232475a5299d5a75fa855763fedb3cec .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/LED.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/LED.o.d" -o ${OBJECTDIR}/_ext/1975241074/LED.o C:/ECE118/src/LED.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/RC_Servo.o: C:/ECE118/src/RC_Servo.c  .generated_files/flags/ROBOT_TEST/757d8659672def9b8808c51b93cc0a58db8001b9 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/RC_Servo.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/RC_Servo.o.d" -o ${OBJECTDIR}/_ext/1975241074/RC_Servo.o C:/ECE118/src/RC_Servo.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/pwm.o: C:/ECE118/src/pwm.c  .generated_files/flags/ROBOT_TEST/6beae75352b4a5549e7989b1b41e35db9af9211d .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/pwm.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/pwm.o.d" -o ${OBJECTDIR}/_ext/1975241074/pwm.o C:/ECE118/src/pwm.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/serial.o: C:/ECE118/src/serial.c  .generated_files/flags/ROBOT_TEST/3817e3352cb84a6da34192916793ff04c05a31b9 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/serial.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/serial.o.d" -o ${OBJECTDIR}/_ext/1975241074/serial.o C:/ECE118/src/serial.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1975241074/timers.o: C:/ECE118/src/timers.c  .generated_files/flags/ROBOT_TEST/22382b37c30949a092a0b7a1de11cc127ae4247c .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1975241074" 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o.d 
	@${RM} ${OBJECTDIR}/_ext/1975241074/timers.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1975241074/timers.o.d" -o ${OBJECTDIR}/_ext/1975241074/timers.o C:/ECE118/src/timers.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FinalEventChecker.c  .generated_files/flags/ROBOT_TEST/ab214794b0869e452c4c2b4262db03b45129adcc .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o.d" -o ${OBJECTDIR}/_ext/1064041224/FinalEventChecker.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FinalEventChecker.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowTapeSubHSM.c  .generated_files/flags/ROBOT_TEST/ae6a0841f34c74b085b45a05963d6a2124e3f564 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o.d" -o ${OBJECTDIR}/_ext/1064041224/FollowTapeSubHSM.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowTapeSubHSM.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowWallSubHSM.c  .generated_files/flags/ROBOT_TEST/ef79c890a1331f83f0478e31480d9cd1f8ed4637 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o.d" -o ${OBJECTDIR}/_ext/1064041224/FollowWallSubHSM.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/FollowWallSubHSM.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/TapeBumpService.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/TapeBumpService.c  .generated_files/flags/ROBOT_TEST/e0b8c62ee4662a51512c2d80c04c53d6527d8d78 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/TapeBumpService.o.d" -o ${OBJECTDIR}/_ext/1064041224/TapeBumpService.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/TapeBumpService.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/UnloadScoopService.c  .generated_files/flags/ROBOT_TEST/727300fce3bbfcc3c5b9dba27bf3ec40b87708f .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1064041224" 
	@${RM} ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o.d 
	@${RM} ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o.d" -o ${OBJECTDIR}/_ext/1064041224/UnloadScoopService.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/UnloadScoopService.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1335717908/RobotHSM.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/RobotHSM.c  .generated_files/flags/ROBOT_TEST/49d28d88bcbd5ba9be4e6cf430f54fd9601dde61 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1335717908" 
	@${RM} ${OBJECTDIR}/_ext/1335717908/RobotHSM.o.d 
	@${RM} ${OBJECTDIR}/_ext/1335717908/RobotHSM.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1335717908/RobotHSM.o.d" -o ${OBJECTDIR}/_ext/1335717908/RobotHSM.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/RobotHSM.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
${OBJECTDIR}/_ext/1335717908/Robot.o: C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/Robot.c  .generated_files/flags/ROBOT_TEST/25ee75baf2f3eacdcf8a1111775d800619aa7090 .generated_files/flags/ROBOT_TEST/5c6b98b8923ce30ee24d180da03fe6585119c89b
	@${MKDIR} "${OBJECTDIR}/_ext/1335717908" 
	@${RM} ${OBJECTDIR}/_ext/1335717908/Robot.o.d 
	@${RM} ${OBJECTDIR}/_ext/1335717908/Robot.o 
	${MP_CC}  $(MP_EXTRA_CC_PRE)  -g -x c -c -mprocessor=$(MP_PROCESSOR_OPTION)  -fno-common -DROBOT_TEST -I"." -I"../" -I"C:/ECE118/include" -MP -MMD -MF "${OBJECTDIR}/_ext/1335717908/Robot.o.d" -o ${OBJECTDIR}/_ext/1335717908/Robot.o C:/Users/cfiguer7/Desktop/ECE218/ece118-2024/Robot_final.X/Robot.c    -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -mdfp="${DFP_DIR}"  
	
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
	${MP_CC} $(MP_EXTRA_LD_PRE) -g   -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)      -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D=__DEBUG_D,--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
	
else
${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   C:/ECE118/bootloader320.ld
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -mprocessor=$(MP_PROCESSOR_OPTION)  -o ${DISTDIR}/Robot_final.X.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} ${OBJECTFILES_QUOTED_IF_SPACED}          -DXPRJ_ROBOT_TEST=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,--defsym=__MPLAB_BUILD=1$(MP_EXTRA_LD_POST)$(MP_LINKER_FILE_OPTION),--defsym=_min_heap_size=10,--no-code-in-dinit,--no-dinit-in-serial-mem,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--memorysummary,${DISTDIR}/memoryfile.xml -mdfp="${DFP_DIR}"
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
