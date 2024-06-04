/**
 * @file    machine_de _turing_main.c
 * @author 	Romain BROUARD
 * @date	2024/05
 * @brief 	main programm of the machine de turing project
 *  
 *
 */
#include "machine_de_turing_main.h"

/*--------------------------------------------------------------------------*/
/* PIC24FJ64GA002                                   						*/
/*--------------------------------------------------------------------------*/
#pragma config	BWRP = OFF          //	(ON, OFF)
#pragma config	BSS = OFF           //	(HI2K, HI1K, STD2K, STD1K, OFF)
#pragma config	GWRP = OFF          //	(ON, OFF)
#pragma config	GCP = OFF           //	(ON, OFF)
#pragma config 	FNOSC = FRCPLL   // 	Oscillator Select (FRC, FRCPLL, PRI, PRIPLL, SOSC, LPRC, LPFRC, FRCDIV)
#pragma config 	SOSCSRC = DIG       //	(DIG, ANA)
#pragma config 	LPRCSEL = HP        // 	(LP, HP)
#pragma config 	IESO = OFF          // 	Internal External Switch Over Mode (ON, OFF)
#pragma config 	POSCMOD = NONE // 	Primary Oscillator Select (EC, XT, HS, NONE)
#pragma config 	OSCIOFNC = 	CLKO // 	CLKO Enable Configuration bit (IO, CLKO)
#pragma config	POSCFREQ = MS       //	Primary Oscillator Frequency Range Configuration bits (LS, MS, HS)
#pragma config	SOSCSEL	= SOSCLP //	SOSC Power Selection Configuration bits (SOSCLP, SOSCHP)
#pragma config	FCKSM = CSDCMD	//	Clock Switching and Monitor Selection (CSECME, CSECMD, CSDCMD)
#pragma config	WDTPS = PS2	//	Watchdog Timer Postscale Select bits
#pragma config	FWPSA = PR32	//	WDT Prescaler bit (PR32, PR128)
#pragma config	FWDTEN = ON	//	Watchdog Timer Enable bits	
#pragma config	WINDIS = OFF	//	(ON, OFF)
#pragma config	BOREN = BOR0	//	Brown-out Reset Enable bits (BOR0, BOR1, BOR2, BOR3)
#pragma config	PWRTEN = OFF	//	Power-up Timer Enable bit (ON, OFF)
#pragma config	I2C1SEL = PRI	//	Alternate I2C1 Pin Mapping bit (PRI, SEC)
#pragma config	BORV = V27		//	Brown-out Reset Voltage bits (LPBOR, V30, V27, V18)
#pragma config	MCLRE = ON		//	MCLR Pin Enable bit /!\ Toujours à ON pour programmation via PKOB (PicKit On Board)
#pragma config	ICS = PGx1		//	ICD Pin Placement Select bits (PGx1, PGx2, PGx3)

/* Directives de compilation - Macros		*/

/* Déclarations des variables globales 	*/

/* Programme Principal			*/
int main(void){
    
    Initialiser();
    while(1) {
        MainTask();
    }
}
