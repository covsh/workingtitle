/* Copyright (c) 2009 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is confidential property of Nordic 
 * Semiconductor ASA.Terms and conditions of usage are described in detail 
 * in NORDIC SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT. 
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRENTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *              
 * $LastChangedRevision: 133 $
 */

/** @file
 * This file contain parsing of USB commands
 *
 */
#include <Nordic\reg24lu1.h>
#include <intrins.h>

#include "usb.h"
#include "bootloader.h"
#include "version.h"
#include "usb_cmds.h"
#include "flash.h"
#include "config.h"
#include "printf.h"

#include "nrf24lu1p.h"

extern bool packet_received;

extern xdata volatile uint8_t in1buf[];
extern xdata volatile uint8_t out1buf[];
extern xdata volatile uint8_t in1bc;
extern xdata volatile uint8_t out1bc;

static xdata uint8_t rdismb _at_ 0x0023;                // Readback Disable byte in InfoPage

static bool page_write;
static uint16_t nblock;                                 // Holds the number of the current USB_EP1_SIZE bytes block
static uint8_t nblocks;                                 // Holds number of the blocks programmed

static bool idata used_flash_pages[NUM_FLASH_PAGES];    // Holds which flash pages to erase

void int_ep1in_handler(void);
void int_ep2in_handler(void);
void int_ep3in_handler(void);


static void delay_ms(uint16_t ms)
{
    uint16_t i, j;
    
    for(i = 0; i < ms; i++ )
    {
        for( j = 0; j < 1403; j++)
        {
            _nop_();
        }
    }
}

extern xdata volatile uint8_t usbpair;
extern xdata volatile uint8_t in2cs;
extern xdata volatile uint8_t in3cs;
extern volatile bool int_ep2in_flag;

/* USB interrupt request */
void usb_irq_handler(void) interrupt INTERRUPT_USB_INT  {
		usb_irq();
}

void bootloader(void)
{
		uint8_t i;
		
		usb_init();
	
		USB = 1; // USBIRQ is mapped to IEN1.4
		EA = 1; // enable global interrupt
	
    CKCON = 0x02;       // See nRF24LU1p AX PAN
    nblock = 0;
    packet_received = page_write = false;

		usbpair = 0x01;
		
		tfp_printf("usbpair 0x%02x\r",(uint16_t)usbpair);
		tfp_printf("in2cs 0x%02x\r",(uint16_t)in2cs);
		tfp_printf("in3cs 0x%02x\r",(uint16_t)in3cs);
		delay_ms(1000);	
		tfp_printf("READY\r");
		
		int_ep1in_handler();
		
		while(1) {
			while(in2cs != 0);
			if(i%2==0)
				int_ep2in_handler();
			else
				int_ep3in_handler();
			i++;
		}
		
}
