
#line 1 "..\usb_desc_bootloader.c" /0











 
 



 
  
#line 1 "..\config.h" /0











 
 



 
 
 
 
 
 
 
 
 
 
 
#line 18 "..\usb_desc_bootloader.c" /0
 
 
 
 
 
  
#line 1 "..\usb_desc_bootloader.h" /0











 
 



 
 
 
 
  
#line 1 "..\usb_desc.h" /0











 
 




 
 
 
 
  
#line 1 "..\..\..\compiler\c51\stdint.h" /0











 
 








 
 
 
 
 
 
 
 typedef unsigned char uint8_t;         
 
 typedef signed char int8_t;           
 
 typedef unsigned int uint16_t;         
 
 typedef signed int int16_t;           
 
 typedef unsigned long uint32_t;        
 
 typedef signed long int32_t;          
 
 
 
 
 
 
 
 
#line 22 "..\usb_desc.h" /0
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint16_t bcdUSB;
 volatile uint8_t bDeviceClass;
 volatile uint8_t bDeviceSubClass;
 volatile uint8_t bDeviceProtocol;
 volatile uint8_t bMaxPacketSize0;
 volatile uint16_t idVendor;
 volatile uint16_t idProduct;
 volatile uint16_t bcdDevice;
 volatile uint8_t iManufacturer;
 volatile uint8_t iProduct;
 volatile uint8_t iSerialNumber;
 volatile uint8_t bNumConfigurations;
 } usb_dev_desc_t;
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint16_t wTotalLength;
 volatile uint8_t bNumInterfaces;
 volatile uint8_t bConfigurationValue;
 volatile uint8_t iConfiguration;
 volatile uint8_t bmAttributes;
 volatile uint8_t bMaxPower;
 } usb_conf_desc_t;
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint8_t bInterfaceNumber;
 volatile uint8_t bAlternateSetting;
 volatile uint8_t bNumEndpoints;
 volatile uint8_t bInterfaceClass;
 volatile uint8_t bInterfaceSubClass;
 volatile uint8_t bInterfaceProtocol;
 volatile uint8_t iInterface;
 } usb_if_desc_t;
 
 typedef struct
 {
 volatile uint8_t bLength;
 volatile uint8_t bDescriptorType;
 volatile uint8_t bEndpointAddress;
 volatile uint8_t bmAttributes;
 volatile uint16_t wMaxPacketSize;
 volatile uint8_t bInterval;
 } usb_ep_desc_t;
 
 
#line 21 "..\usb_desc_bootloader.h" /0
 
 
 
 
 
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
 
 
#line 23 "..\usb_desc_bootloader.c" /0
 
 
 
 code usb_dev_desc_t g_usb_dev_desc = {
 sizeof(usb_dev_desc_t), 
  0x01, 
  ((((0x0200)&0xFF)<<8)|(((0x0200)>>8)&0xFF)),        
 0xff,                
 0xff,                
 0xff,                
  32, 
  ((((0x193A)&0xFF)<<8)|(((0x193A)>>8)&0xFF)),        
  ((((0x0101)&0xFF)<<8)|(((0x0101)>>8)&0xFF)),        
  ((((0x0001)&0xFF)<<8)|(((0x0001)>>8)&0xFF)),        
 0x01,                
 0x02,                
 0x00,                
 0x01                 
 };
 
 code usb_conf_desc_bootloader_t g_usb_conf_desc = 
 {
 {
 sizeof(usb_conf_desc_t),
  0x02,
  ((((sizeof(usb_conf_desc_bootloader_t))&0xFF)<<8)|(((sizeof(usb_conf_desc_bootloader_t))>>8)&0xFF)),
 1,             
 1,             
 2,             
 0xE0,          
 50,            
 },
 
 {
 sizeof(usb_if_desc_t),
  0x04,
 0,             
 0,             
 4,             
 0xff,          
 0x00,          
 0xff,          
 0x00,          
 },
 
 {
 sizeof(usb_ep_desc_t),
  0x05,
 0x81,                    
  0x02,  
  ((((64)&0xFF)<<8)|(((64)>>8)&0xFF)),      
 0x06                     
 },
 
 
 {
 sizeof(usb_ep_desc_t),
  0x05,
 0x82,                    
  0x02,  
  ((((64)&0xFF)<<8)|(((64)>>8)&0xFF)),      
 0x06                     
 },
 
 
 
 {
 sizeof(usb_ep_desc_t),
  0x05,
 0x01,                    
  0x02,  
  ((((64)&0xFF)<<8)|(((64)>>8)&0xFF)),      
 0x06                     
 },
 
 
 {
 sizeof(usb_ep_desc_t),
  0x05,
 0x02,                    
  0x02,  
  ((((64)&0xFF)<<8)|(((64)>>8)&0xFF)),      
 0x06                     
 },
 
 };
 
 
 
 code uint8_t g_usb_string_desc_1[] = 
 {
 sizeof("!ordic Semiconductor") * 2, 0x03,
 '!', 00,
 'o', 00,
 'r', 00,
 'd', 00,
 'i', 00,
 'c', 00,
 ' ', 00,
 'S', 00,
 'e', 00,
 'm', 00,
 'i', 00,
 'c', 00,
 'o', 00,
 'n', 00,
 'd', 00,
 'u', 00,
 'c', 00,
 't', 00,
 'o', 00,
 'r', 00 
 };
 
 
 
 code uint8_t g_usb_string_desc_2[] = 
 {
 sizeof("nRF24LU1P-F32 BOOT LDR") * 2, 0x03,
 '!', 00,
 'R', 00,
 'F', 00,
 '2', 00,
 '4', 00,
 'L', 00,
 'U', 00,
 '1', 00,
 'P', 00,
 '-', 00,
 'F', 00,
 '3', 00,
 '2', 00,
 ' ', 00,
 'B', 00,
 'O', 00,
 'O', 00,
 'T', 00,
 ' ', 00,
 'L', 00,
 'D', 00,
 'R', 00
 };
 
 code uint8_t g_usb_string_desc_ee[] = 
 {
 0x12, 0x03,
 0x4D, 0x00,
 0x53, 0x00,
 0x46, 0x00,
 0x54, 0x00,
 0x31, 0x00,
 0x30, 0x00,
 0x30, 0x00,
  0xAA, 0x00
 };
 
 
 code uint8_t g_usb_extended_compat_id[] =
 {
 0x28, 0x00, 0x00, 0x00,  
 0x00, 0x01, 						 
 0x04, 0x00, 						 
 0x01, 									 
 0, 0, 0, 0, 0, 0, 0, 		 
 0, 											 
 0, 											 
 0x57, 0x49, 0x4E, 0x55,  
 0x53, 0x42, 0x00, 0x00,
 0, 0, 0, 0, 0, 0, 0, 0,  
 0, 0, 0, 0, 0, 0 				 
 };
 
 code uint8_t g_usb_extended_proper_os[] =
 {
 0xCC, 0x00, 0x00, 0x00,  
 0x00, 0x01,							 
 0x05, 0x00, 						 
 0x02, 0x00, 						 
 
 0x84, 0x00, 0x00, 0x00,	 
 0x01, 0x00, 0x00, 0x00,	 
 0x28, 0x00,							 
 'D',0, 'e',0, 'v',0, 		 
 'i',0, 'c',0, 'e',0,
 'I',0, 'n',0, 't',0,
 'e',0, 'r',0, 'f',0,
 'a',0, 'c',0, 'e',0,
 'G',0, 'U',0, 'I',0,
 'D',0, 0, 0,	
 0x4E, 0x00, 0x00, 0x00,	 
 '{',0, 'E',0, 'A',0,		 
 '0',0, 'B',0, 'D',0,
 '5',0, 'C',0, '3',0,
 '-',0, '5',0, '0',0,
 'F',0, '3',0, '-',0,
 '4',0, '8',0, '8',0,
 '8',0, '-',0, '8',0,
 '4',0, 'B',0, '4',0,
 '-',0, '7',0, '4',0, 
 'E',0, '5',0, '0',0, 
 'E',0, '1',0, '6',0, 
 '4',0, '9',0, 'D',0, 
 'B',0, '}',0, 0, 0,	
 
 0x3E, 0x00, 0x00, 0x00,	 
 0x01, 0x00, 0x00, 0x00,	 
 0x0C, 0x00,							 
 'L',0, 'a',0, 'b',0,		 
 'e',0, 'l',0, 0, 0,
 0x24, 0x00, 0x00, 0x00,	 
 'W',0, 'i',0, 'n',0,		 
 'U',0, 'S',0, 'B',0,		
 'C',0, 'o',0, 'm',0, 
 'm',0, ' ',0, 'd',0, 
 'e',0, 'v',0, 'i',0, 
 'c',0, 'e',0, 0, 0
 };
 
 
 code uint8_t string_zero[] = {0x04, 0x03, 0x09, 0x04} ;
