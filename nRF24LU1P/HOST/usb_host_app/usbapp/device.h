//
// Define below GUIDs
//
#pragma once

#include <initguid.h>


//
// Device Interface GUID.
// Used by all WinUsb devices that this application talks to.
// Must match "DeviceInterfaceGUIDs" registry value specified in the INF file.
// df1f3396-eba3-4bb5-a4a6-14428e108f9f
//
//DEFINE_GUID(GUID_DEVINTERFACE_USBApplication1,
//    0xdf1f3396,0xeba3,0x4bb5,0xa4,0xa6,0x14,0x42,0x8e,0x10,0x8f,0x9f);

DEFINE_GUID(GUID_DEVINTERFACE_USBApplication1,
//	  0x88BAE032,0x5A81,0x49F0,0xBC,0x3D,0xA4,0xFF,0x13,0x82,0x16,0xD6);
	  0xEA0BD5C3,0x50F3,0x4888,0x84,0xB4,0x74,0xE5,0x0E,0x16,0x49,0xDB);


//{88BAE032 - 5A81 - 49F0 - BC3D - A4FF138216D6}


typedef struct _DEVICE_DATA {

    BOOL                    HandlesOpen;
    WINUSB_INTERFACE_HANDLE WinusbHandle;
    HANDLE                  DeviceHandle;
    TCHAR                   DevicePath[MAX_PATH];

} DEVICE_DATA, *PDEVICE_DATA;

struct PIPE_ID
{
	UCHAR  PipeInId;
	UCHAR  PipeOutId;
};


HRESULT
OpenDevice(
    _Out_     PDEVICE_DATA DeviceData,
    _Out_opt_ PBOOL        FailureDeviceNotFound
    );

VOID
CloseDevice(
    _Inout_ PDEVICE_DATA DeviceData
    );

/* Setup Data Constants */

#define USB_SETUP_HOST_TO_DEVICE                0x00    // Device Request bmRequestType transfer direction - host to device transfer
#define USB_SETUP_DEVICE_TO_HOST                0x80    // Device Request bmRequestType transfer direction - device to host transfer
#define USB_SETUP_TYPE_STANDARD                 0x00    // Device Request bmRequestType type - standard
#define USB_SETUP_TYPE_CLASS                    0x20    // Device Request bmRequestType type - class
#define USB_SETUP_TYPE_VENDOR                   0x40    // Device Request bmRequestType type - vendor
#define USB_SETUP_RECIPIENT_DEVICE              0x00    // Device Request bmRequestType recipient - device
#define USB_SETUP_RECIPIENT_INTERFACE           0x01    // Device Request bmRequestType recipient - interface
#define USB_SETUP_RECIPIENT_ENDPOINT            0x02    // Device Request bmRequestType recipient - endpoint
#define USB_SETUP_RECIPIENT_OTHER               0x03    // Device Request bmRequestType recipient - other

//Vendor control messages
#define SET_RADIO_CHANNEL	0x01
#define SET_RADIO_ADDRESS	0x02
#define SET_DATA_RATE		0x03
#define SET_RADIO_POWER		0x04
#define SET_RADIO_ARD		0x05
#define SET_RADIO_ARC		0x06
#define ACK_ENABLE			0x10
#define SET_CONT_CARRIER	0x20
#define START_SCAN_CHANNELS 0x21
#define GET_SCAN_CHANNELS	0x21
#define LAUNCH_BOOTLOADER	0xFF


BOOL GetUSBDeviceSpeed(WINUSB_INTERFACE_HANDLE hDeviceHandle, UCHAR* pDeviceSpeed);
BOOL QueryDeviceEndpoints(WINUSB_INTERFACE_HANDLE hDeviceHandle, PIPE_ID* pipeid);
BOOL SendDatatoDefaultEndpoint(WINUSB_INTERFACE_HANDLE hDeviceHandle);
BOOL WriteToBulkEndpoint(WINUSB_INTERFACE_HANDLE hDeviceHandle, UCHAR* pID, ULONG* pcbWritten);
//BOOL ReadFromBulkEndpoint(WINUSB_INTERFACE_HANDLE hDeviceHandle, UCHAR* pID, ULONG cbSize);
BOOL ReadFromBulkEndpoint(WINUSB_INTERFACE_HANDLE hDeviceHandle, UCHAR* pID, ULONG cbSize, ULONG* cbRead);
BOOL SendDatatoDefaultEndpoint(WINUSB_INTERFACE_HANDLE hDeviceHandle);
BOOL SendDatatoDefaultEndpoint(WINUSB_INTERFACE_HANDLE hDeviceHandle, UCHAR Request, PUCHAR outbuffer, ULONG outbufferlength, PUCHAR inbuffer, ULONG inbufferlength);

