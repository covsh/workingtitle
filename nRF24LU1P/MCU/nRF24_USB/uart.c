#include "nrf24lu1p.h"
#include <stdint.h>
#include "uart.h"

#define BAUD_57K6   1015  // = Round(1024 - (2*16e6)/(64*57600))
#define BAUD_38K4   1011  // = Round(1024 - (2*16e6)/(64*38400))
#define BAUD_19K2    998  // = Round(1024 - (2*16e6)/(64*19200))
#define BAUD_9K6     972  // = Round(1024 - (2*16e6)/(64*9600))


void uart_init(hal_uart_baudrate_t baud)
{
  uint16_t temp;

	ES0 = 0;                      // Disable UART0 interrupt while initializing
  REN0 = 0;                     // Enable receiver
  SM0 = 0;                      // Mode 1..
  SM1 = 1;                      // ..8 bit variable baud rate
  PCON |= 0x80;                 // SMOD = 1
  WDCON |= 0x80;                // Select internal baud rate generator
  switch(baud)
  {
    case UART_BAUD_57K6:
      temp = BAUD_57K6;
      break;
    case UART_BAUD_38K4:
      temp = BAUD_38K4;
      break;
    case UART_BAUD_9K6:
      temp = BAUD_9K6;
      break;
    case UART_BAUD_19K2:
    default:
      temp = BAUD_19K2;
      break;
  }
  S0RELL = (uint8_t)temp;
  S0RELH = (uint8_t)(temp >> 8);
  P0ALT |= 0x06;                // Select alternate functions on P01 and P02
  P0EXP &= 0xf0;                // Select RxD on P01 and TxD on P02
  P0DIR |= 0x02;                // P01 (RxD) is input
  TI0 = 0;
  ES0 = 0;                      // Disable UART0 interrupt
}


void uart_putchar(uint8_t ch)
{
  // Wait until there is space in the TX buffer:
  
	S0BUF = ch;
	//while(TI0 == 0);
	//TI0 = 1;
    
}
