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
 * Flash (self) programming functions
 *
 */
#include <Nordic\reg24lu1.h>
#include "flash.h"

// Place all code and constants in this file in the segment "BOOTLOADER":
#pragma userclass (code = BOOTLOADER)
#pragma userclass (const = BOOTLOADER)

void flash_page_erase(uint8_t pn)
{  
    CKCON = 0x01;   // See nRF24LU1p AX PAN
    // Enable flash write operation:
    FCR = 0xAA;
    FCR = 0x55;
    WEN = 1;
    //
    // Write the page address to FCR to start the page erase
    // operation:
    FCR = pn;
    //
    // Wait for the erase operation to finish:
    while(RDYN == 1)
        ;
    WEN = 0;
    CKCON = 0x02;
}

void flash_bytes_write(uint16_t a, uint8_t xdata *p, uint16_t n)
{
    uint8_t xdata *data pb;

    CKCON = 0x01;
    // Enable flash write operation:
    FCR = 0xAA;
    FCR = 0x55;
    WEN = 1;
    //
    // Write the bytes directly to the flash:
    pb = (uint8_t xdata *)a;
    while(n--)
    {
        *pb++ = *p++;
        //
        // Wait for the write operation to finish:
        while(RDYN == 1)
            ;
    }
    WEN = 0;
    CKCON = 0x02;
}

void flash_byte_write(uint16_t a, uint8_t b)
{
    uint8_t xdata *data pb;
    
    CKCON = 0x01;
    // Enable flash write operation:
    FCR = 0xAA;
    FCR = 0x55;
    WEN = 1;
    //
    // Write the byte directly to the flash. This operation is "self timed" when
    // executing from the flash; the CPU will halt until the operation is
    // finished:
    pb = (uint8_t xdata *)a;
    *pb = b;
    //
    // When running from XDATA RAM we need to wait for the operation to finish:
    while(RDYN == 1)
        ;
    WEN = 0;
    CKCON = 0x02;
}

void flash_bytes_read(uint16_t a, uint8_t xdata *p, uint16_t n)
{
    uint8_t xdata *pb = (uint8_t xdata *)a;
    while(n--)
    {
        *p = *pb;
        pb++;
        p++;
    }
}
