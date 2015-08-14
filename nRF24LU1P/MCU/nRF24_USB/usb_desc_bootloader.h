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
 * Header file for the Bootloader USB descriptor
 *
 */
#ifndef USB_DESC_BOOTLOADER_H__
#define USB_DESC_BOOTLOADER_H__

#include "usb_desc.h"

#define USB_STRING_DESC_COUNT 2
#define MS_VENDORCODE 0xAA

typedef struct
{
    usb_conf_desc_t conf;
    usb_if_desc_t if0;
    usb_ep_desc_t ep1in;
		usb_ep_desc_t ep2in;
    usb_ep_desc_t ep1out;
		usb_ep_desc_t ep2out;
} usb_conf_desc_bootloader_t;

extern code usb_conf_desc_bootloader_t g_usb_conf_desc;
extern code usb_dev_desc_t g_usb_dev_desc;
extern code uint8_t g_usb_string_desc_1[];
extern code uint8_t g_usb_string_desc_2[];
extern code uint8_t g_usb_string_desc_ee[];
extern code uint8_t g_usb_extended_compat_id[];
extern code uint8_t g_usb_extended_proper_os[];
extern code uint8_t string_zero[4];

#endif  // USB_DESC_TEMPL_H__
