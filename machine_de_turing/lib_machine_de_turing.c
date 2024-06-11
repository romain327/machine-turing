/**
 * @file    machine_de _turing_main.c
 * @author 	Romain BROUARD
 * @date	2024/05
 * @brief 	main programm of the machine de turing project
 *  
 *
 */
#include "lib_machine_de_turing.h"
#include "lib_sept_seg.h"

#ifndef FCY
#define FCY 400000UL
#endif

mcp23017_desc_t mcp23017_7_seg;
mcp23017_desc_t mcp23017_bp;
mcp23017_desc_t mcp23017_general;
i2c_desc_t I2CModule;

void Initialiser() {
    mcp23017_err_t   Res;
    mcp23017_config_t    mcpCfg;
    
    TRISB = 0x0000;
    LATB = 0;
  
    mcpCfg.pi2c = &I2CModule;
    mcpCfg.initType = INIT_WITH_I2C1;
    
    // MCP23017 7 segs
    mcpCfg.i2c_Address = MCP23017_7_SEG;
    Res = mcp23017_init(&mcp23017_7_seg,&mcpCfg);
    if (Res != MCP23017_OK) error_handler();
    
    // MCP23017 BP
    mcpCfg.i2c_Address = MCP23017_BP;
    Res = mcp23017_init(&mcp23017_bp,&mcpCfg);
    if (Res != MCP23017_OK) error_handler();
    
    // MCP23017 GENERAL
    mcpCfg.i2c_Address = MCP23017_GENERAL;
    Res = mcp23017_init(&mcp23017_general,&mcpCfg);
    if (Res != MCP23017_OK) error_handler();
    
    
    
}

void MainTask() {
    uint8_t RegAddr = 0x09;
    uint8_t RegValue = 0b10100000;
    uint8_t RegValue2;
    if(mcp23017_write_reg(&mcp23017_7_seg, 0x0A, RegValue) == MCP23017_ERROR) {
        error_handler();
    }
    RegValue = 0b00000001;

    if(mcp23017_write_reg(&mcp23017_7_seg, RegAddr, 0b00000001) == MCP23017_ERROR) {
        error_handler();
        while(1);
    }
    if(mcp230173_read_reg(&mcp23017_7_seg, RegAddr, &RegValue2) == MCP23017_ERROR) {
        error_handler();
    }
    LATBbits.LATB15 = 0;
    if(RegValue2 == 0b00000001) {
        valid();
        while(1);
    }
    else {
        error_handler();
        while(1);
    }
}

void error_handler(void){
    LATBbits.LATB15 = 1;
    __delay_ms(500);
}

void valid(void) {
    LATBbits.LATB14 = 1;
}