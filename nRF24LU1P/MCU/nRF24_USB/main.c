#include <stdint.h>
#include "bootloader.h"
#include "config.h"
#include "nrf24lu1p.h"
#include "hal_uart.h"
#include "printf.h"
#include "usart_woist.h"


void putchar(int c)
{
  //hal_uart_putchar(c);
	uart_send_wait_for_complete(c);
}


// Repeated putchar to print a string
void putstring(char *s)
{
  while(*s != 0)
    putchar(*s++);
}



void main(void)
{
		usart_init();
		tfp_printf("\n\rHello World for TPF\r");  
    bootloader(); // Will never return
	
		while(1);
}
