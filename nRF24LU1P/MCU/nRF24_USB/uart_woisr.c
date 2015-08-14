#include "usart_woist.h"


#define BAUD_57K6   1015  // = Round(1024 - (2*16e6)/(64*57600))

void usart_init(void) {
	ES0 = 0; 											// Disable UART0 interrupt while initializing
	REN0 = 1;                 		// Enable receiver
  SM0 = 0;                      // Mode 1..
  SM1 = 1;                      // ..8 bit variable baud rate
  PCON |= 0x80;                 // SMOD = 1
  WDCON |= 0x80;                // Select internal baud rate generator	
  S0RELL = (uint8_t)BAUD_57K6;
  S0RELH = (uint8_t)(BAUD_57K6 >> 8);	
  P0ALT |= 0x06;                // Select alternate functions on P01 and P02
  P0EXP &= 0xf0;                // Select RxD on P01 and TxD on P02
  P0DIR |= 0x02;                // P01 (RxD) is input
  TI0 = 0;											// clear TX interrupt flag	
	return;
}

void uart_send(uint8_t tx_data)
{
	S0BUF = tx_data;
}

void uart_send_wait_for_complete(uint8_t tx_data)	
{
	uart_send(tx_data);
	while(TI0 != 1);
	TI0 = 0;
	//wait_for_bit_level_high(S0CON_SB_TI0);
	//interrupt_clear_uart_tx();	
}

uint8_t uart_get(void)	
{
	return S0BUF;
}
