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
MKDIR=mkdir -p
RM=rm -f 
MV=mv 
CP=cp 

# Macros
CND_CONF=default
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
IMAGE_TYPE=debug
OUTPUT_SUFFIX=elf
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
else
IMAGE_TYPE=production
OUTPUT_SUFFIX=hex
DEBUGGABLE_SUFFIX=elf
FINAL_IMAGE=${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${OUTPUT_SUFFIX}
endif

ifeq ($(COMPARE_BUILD), true)
COMPARISON_BUILD=-mafrlcsj
else
COMPARISON_BUILD=
endif

# Object Directory
OBJECTDIR=build/${CND_CONF}/${IMAGE_TYPE}

# Distribution Directory
DISTDIR=dist/${CND_CONF}/${IMAGE_TYPE}

# Source Files Quoted if spaced
SOURCEFILES_QUOTED_IF_SPACED=machine_de_turing_main.c lib_i2c_pic24_ll.c lib_mcp23017.c lib_machine_de_turing.c lib_sept_seg.c lib_sk9822.c lib_l154a4surkqbdzgw.c lib_spi.c

# Object Files Quoted if spaced
OBJECTFILES_QUOTED_IF_SPACED=${OBJECTDIR}/machine_de_turing_main.o ${OBJECTDIR}/lib_i2c_pic24_ll.o ${OBJECTDIR}/lib_mcp23017.o ${OBJECTDIR}/lib_machine_de_turing.o ${OBJECTDIR}/lib_sept_seg.o ${OBJECTDIR}/lib_sk9822.o ${OBJECTDIR}/lib_l154a4surkqbdzgw.o ${OBJECTDIR}/lib_spi.o
POSSIBLE_DEPFILES=${OBJECTDIR}/machine_de_turing_main.o.d ${OBJECTDIR}/lib_i2c_pic24_ll.o.d ${OBJECTDIR}/lib_mcp23017.o.d ${OBJECTDIR}/lib_machine_de_turing.o.d ${OBJECTDIR}/lib_sept_seg.o.d ${OBJECTDIR}/lib_sk9822.o.d ${OBJECTDIR}/lib_l154a4surkqbdzgw.o.d ${OBJECTDIR}/lib_spi.o.d

# Object Files
OBJECTFILES=${OBJECTDIR}/machine_de_turing_main.o ${OBJECTDIR}/lib_i2c_pic24_ll.o ${OBJECTDIR}/lib_mcp23017.o ${OBJECTDIR}/lib_machine_de_turing.o ${OBJECTDIR}/lib_sept_seg.o ${OBJECTDIR}/lib_sk9822.o ${OBJECTDIR}/lib_l154a4surkqbdzgw.o ${OBJECTDIR}/lib_spi.o

# Source Files
SOURCEFILES=machine_de_turing_main.c lib_i2c_pic24_ll.c lib_mcp23017.c lib_machine_de_turing.c lib_sept_seg.c lib_sk9822.c lib_l154a4surkqbdzgw.c lib_spi.c



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

.build-conf:  ${BUILD_SUBPROJECTS}
ifneq ($(INFORMATION_MESSAGE), )
	@echo $(INFORMATION_MESSAGE)
endif
	${MAKE}  -f nbproject/Makefile-default.mk ${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${OUTPUT_SUFFIX}

MP_PROCESSOR_OPTION=24FJ64GA002
MP_LINKER_FILE_OPTION=,--script=p24FJ64GA002.gld
# ------------------------------------------------------------------------------------
# Rules for buildStep: compile
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${OBJECTDIR}/machine_de_turing_main.o: machine_de_turing_main.c  .generated_files/flags/default/ab5f0cbc7ae970b4501e06506fd4cbdd9880a94 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/machine_de_turing_main.o.d 
	@${RM} ${OBJECTDIR}/machine_de_turing_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  machine_de_turing_main.c  -o ${OBJECTDIR}/machine_de_turing_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/machine_de_turing_main.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_i2c_pic24_ll.o: lib_i2c_pic24_ll.c  .generated_files/flags/default/cb3cccb0537f58c788a8f6c98fb993e4b35688 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_i2c_pic24_ll.o.d 
	@${RM} ${OBJECTDIR}/lib_i2c_pic24_ll.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_i2c_pic24_ll.c  -o ${OBJECTDIR}/lib_i2c_pic24_ll.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_i2c_pic24_ll.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_mcp23017.o: lib_mcp23017.c  .generated_files/flags/default/8d9eb272b053c21319b9cbdec198f724523f04b7 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_mcp23017.o.d 
	@${RM} ${OBJECTDIR}/lib_mcp23017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_mcp23017.c  -o ${OBJECTDIR}/lib_mcp23017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_mcp23017.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_machine_de_turing.o: lib_machine_de_turing.c  .generated_files/flags/default/2d24b110b1938dfb2ed05933f6253659265f8a4 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_machine_de_turing.o.d 
	@${RM} ${OBJECTDIR}/lib_machine_de_turing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_machine_de_turing.c  -o ${OBJECTDIR}/lib_machine_de_turing.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_machine_de_turing.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_sept_seg.o: lib_sept_seg.c  .generated_files/flags/default/b80a3a4caf9ee46d017627bf2376c2b3d679a8d9 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_sept_seg.o.d 
	@${RM} ${OBJECTDIR}/lib_sept_seg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_sept_seg.c  -o ${OBJECTDIR}/lib_sept_seg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_sept_seg.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_sk9822.o: lib_sk9822.c  .generated_files/flags/default/c6022fe3a0e754b2578cab83ce07454aa9312521 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_sk9822.o.d 
	@${RM} ${OBJECTDIR}/lib_sk9822.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_sk9822.c  -o ${OBJECTDIR}/lib_sk9822.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_sk9822.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_l154a4surkqbdzgw.o: lib_l154a4surkqbdzgw.c  .generated_files/flags/default/e79927a1e2ed5235fe75fb2d246daddcca42e08a .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_l154a4surkqbdzgw.o.d 
	@${RM} ${OBJECTDIR}/lib_l154a4surkqbdzgw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_l154a4surkqbdzgw.c  -o ${OBJECTDIR}/lib_l154a4surkqbdzgw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_l154a4surkqbdzgw.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_spi.o: lib_spi.c  .generated_files/flags/default/e96ef152bf7c81b6847475b8dda1d899148a3775 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_spi.o.d 
	@${RM} ${OBJECTDIR}/lib_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_spi.c  -o ${OBJECTDIR}/lib_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_spi.o.d"      -g -D__DEBUG     -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
else
${OBJECTDIR}/machine_de_turing_main.o: machine_de_turing_main.c  .generated_files/flags/default/56951ffad272c4a2d253727ca259da84394cc32 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/machine_de_turing_main.o.d 
	@${RM} ${OBJECTDIR}/machine_de_turing_main.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  machine_de_turing_main.c  -o ${OBJECTDIR}/machine_de_turing_main.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/machine_de_turing_main.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_i2c_pic24_ll.o: lib_i2c_pic24_ll.c  .generated_files/flags/default/149e963f47451ba55cbab86093555416063bd4a8 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_i2c_pic24_ll.o.d 
	@${RM} ${OBJECTDIR}/lib_i2c_pic24_ll.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_i2c_pic24_ll.c  -o ${OBJECTDIR}/lib_i2c_pic24_ll.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_i2c_pic24_ll.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_mcp23017.o: lib_mcp23017.c  .generated_files/flags/default/ba66579d19306cfe7bbb0addab489a8dd49f3761 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_mcp23017.o.d 
	@${RM} ${OBJECTDIR}/lib_mcp23017.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_mcp23017.c  -o ${OBJECTDIR}/lib_mcp23017.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_mcp23017.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_machine_de_turing.o: lib_machine_de_turing.c  .generated_files/flags/default/cd5b71c58c4a1f025d4a50946a9b5d104116d120 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_machine_de_turing.o.d 
	@${RM} ${OBJECTDIR}/lib_machine_de_turing.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_machine_de_turing.c  -o ${OBJECTDIR}/lib_machine_de_turing.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_machine_de_turing.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_sept_seg.o: lib_sept_seg.c  .generated_files/flags/default/b77e660919d98758d3de613400ef38b8495648ba .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_sept_seg.o.d 
	@${RM} ${OBJECTDIR}/lib_sept_seg.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_sept_seg.c  -o ${OBJECTDIR}/lib_sept_seg.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_sept_seg.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_sk9822.o: lib_sk9822.c  .generated_files/flags/default/61eee26b3e06daf8af4a157d38c679ceb791df4c .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_sk9822.o.d 
	@${RM} ${OBJECTDIR}/lib_sk9822.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_sk9822.c  -o ${OBJECTDIR}/lib_sk9822.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_sk9822.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_l154a4surkqbdzgw.o: lib_l154a4surkqbdzgw.c  .generated_files/flags/default/7b0a37e1a722bcb195ef1bf8ceff8f94020e22c3 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_l154a4surkqbdzgw.o.d 
	@${RM} ${OBJECTDIR}/lib_l154a4surkqbdzgw.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_l154a4surkqbdzgw.c  -o ${OBJECTDIR}/lib_l154a4surkqbdzgw.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_l154a4surkqbdzgw.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
${OBJECTDIR}/lib_spi.o: lib_spi.c  .generated_files/flags/default/6b52ee714678dbc4a17901e24bf11f592ceaae56 .generated_files/flags/default/da39a3ee5e6b4b0d3255bfef95601890afd80709
	@${MKDIR} "${OBJECTDIR}" 
	@${RM} ${OBJECTDIR}/lib_spi.o.d 
	@${RM} ${OBJECTDIR}/lib_spi.o 
	${MP_CC} $(MP_EXTRA_CC_PRE)  lib_spi.c  -o ${OBJECTDIR}/lib_spi.o  -c -mcpu=$(MP_PROCESSOR_OPTION)  -MP -MMD -MF "${OBJECTDIR}/lib_spi.o.d"        -g -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -O0 -msmart-io=1 -Wall -msfr-warn=off    -mdfp="${DFP_DIR}/xc16"
	
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemble
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: assemblePreproc
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
else
endif

# ------------------------------------------------------------------------------------
# Rules for buildStep: link
ifeq ($(TYPE_IMAGE), DEBUG_RUN)
${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk    
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${OUTPUT_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -D__DEBUG=__DEBUG   -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)   -mreserve=data@0x800:0x81F -mreserve=data@0x820:0x821 -mreserve=data@0x822:0x823 -mreserve=data@0x824:0x825 -mreserve=data@0x826:0x84F   -Wl,,,--defsym=__MPLAB_BUILD=1,--defsym=__MPLAB_DEBUG=1,--defsym=__DEBUG=1,-D__DEBUG=__DEBUG,,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	
else
${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${OUTPUT_SUFFIX}: ${OBJECTFILES}  nbproject/Makefile-${CND_CONF}.mk   
	@${MKDIR} ${DISTDIR} 
	${MP_CC} $(MP_EXTRA_LD_PRE)  -o ${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX}  ${OBJECTFILES_QUOTED_IF_SPACED}      -mcpu=$(MP_PROCESSOR_OPTION)        -DXPRJ_default=$(CND_CONF)    $(COMPARISON_BUILD)  -Wl,,,--defsym=__MPLAB_BUILD=1,$(MP_LINKER_FILE_OPTION),--stack=16,--check-sections,--data-init,--pack-data,--handles,--isr,--no-gc-sections,--fill-upper=0,--stackguard=16,--no-force-link,--smart-io,-Map="${DISTDIR}/${PROJECTNAME}.${IMAGE_TYPE}.map",--report-mem,--memorysummary,${DISTDIR}/memoryfile.xml$(MP_EXTRA_LD_POST)  -mdfp="${DFP_DIR}/xc16" 
	${MP_CC_DIR}/xc16-bin2hex ${DISTDIR}/machine_de_turing.${IMAGE_TYPE}.${DEBUGGABLE_SUFFIX} -a    -mdfp="${DFP_DIR}/xc16" 
	
endif


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

DEPFILES=$(wildcard ${POSSIBLE_DEPFILES})
ifneq (${DEPFILES},)
include ${DEPFILES}
endif
