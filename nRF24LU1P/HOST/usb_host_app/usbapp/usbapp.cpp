#include "pch.h"

#include <stdio.h>
#include <time.h>
#include "radio_req.h"


int _tmain(int argc, _TCHAR* argv[])
{
	DEVICE_DATA           deviceData;
	HRESULT               hr;
	USB_DEVICE_DESCRIPTOR deviceDesc;
	BOOL                  bResult;
	BOOL                  noDevice;
	ULONG                 lengthReceived;

	hr = OpenDevice(&deviceData, &noDevice);

	
	if (FAILED(hr)) {
		if (noDevice) {
			printf("Device not connected or driver not installed\n");
		}
		else {
			printf("Failed looking for device, HRESULT 0x%x\n", hr);
		}
		return 0;
	} 
	
	printf("Device open successful\n");

	//
	// Get device descriptor
	//
	bResult = WinUsb_GetDescriptor(deviceData.WinusbHandle,
		USB_DEVICE_DESCRIPTOR_TYPE,
		0,
		0,
		(PBYTE)&deviceDesc,
		sizeof(deviceDesc),
		&lengthReceived);

	if (FALSE == bResult || lengthReceived != sizeof(deviceDesc)) {

		printf("Error among LastError %d or lengthReceived %d\n",
			FALSE == bResult ? GetLastError() : 0,
			lengthReceived);
		CloseDevice(&deviceData);

		return 0;
	}
	
	printf("Device found: VID_%04X&PID_%04X; bcdUsb %04X\n",
		deviceDesc.idVendor,
		deviceDesc.idProduct,
		deviceDesc.bcdUSB);

	ULONG actual_read = 0;
	ULONG total_read = 0;
	clock_t begin, end;
	double time_spent;
	PIPE_ID PipeID;

	ULONG cbSize = 64; // read 64 bytes
	ULONG cbRead; // actual read
	UCHAR* szBuffer = (UCHAR*)LocalAlloc(LPTR, sizeof(UCHAR)*cbSize);

	/* =============== Read from pipe 1 ===============*/
	
	PipeID.PipeInId = 0x81; // single buffer pipe
	total_read = 0;
	begin = clock();

	for (int i = 0; i < 0xFFFF; i++){
		bResult = WinUsb_ReadPipe(deviceData.WinusbHandle, PipeID.PipeInId, szBuffer, cbSize, &cbRead, 0);
		total_read += cbSize;
	}

	end = clock();
	time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("Read from pipe:0x%02x. Total Bulk read %d in %f, %f b/s\n", PipeID.PipeInId, total_read, (float)time_spent, (float)total_read / time_spent);
	
	/* =============== Read from pipe 2. Pipe 2 and 3 are USB endpoint pairing. See usbpair register ===============*/
	PipeID.PipeInId = 0x82; // double buffer pipe
	total_read = 0;
	begin = clock();

	for (int i = 0; i < 0xFFFF; i++){
		bResult = WinUsb_ReadPipe(deviceData.WinusbHandle, PipeID.PipeInId, szBuffer, cbSize, &cbRead, 0);
		total_read += cbSize;
	}

	end = clock();
	time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("Read from pipe:0x%02x. Total Bulk read %d in %f, %f b/s\n", PipeID.PipeInId, total_read, (float)time_spent, (float)total_read / time_spent);

	/* =============== Write to pipe 1 ===============*/
	
	PipeID.PipeInId = 0x01; // single buffer pipe
	ULONG total_write = 0;
	begin = clock();

	for (int i = 0; i < 0xFFFF; i++){
		bResult = WinUsb_WritePipe(deviceData.WinusbHandle, PipeID.PipeInId, szBuffer, cbSize, &cbRead, 0);
		total_write += cbSize;
	}

	end = clock();
	time_spent = (double)(end - begin) / CLOCKS_PER_SEC;
	printf("Write to pipe:0x%02x. Total Bulk write %d in %f, %f b/s\n", PipeID.PipeInId, total_write, (float)time_spent, (float)total_write / time_spent);

	LocalFree(szBuffer);
	CloseDevice(&deviceData);

	return 0;
}

