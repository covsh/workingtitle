#pragma once

#include "pch.h"

class radio_req
{
public:
	radio_req(WINUSB_INTERFACE_HANDLE hDeviceHandle);
	BOOL callBootloader();
	BOOL setRadioChannel(UCHAR channel);
	BOOL setRadioAddress(UCHAR address[5]);
	BOOL setDataRate(UCHAR rate);
	BOOL setRadioPower(UCHAR power);
	BOOL setRadioARD(UCHAR ard);
	BOOL setRadioARC(UCHAR arc);
	BOOL setAckEnable(BOOL en);
	BOOL setContCarrier(BOOL en);
	BOOL setStartScanCh(UCHAR start, UCHAR stop, UCHAR *payload, UCHAR payload_len);
	BOOL getScanChannels(UCHAR *list, USHORT length);
	~radio_req();
private:
	WINUSB_INTERFACE_HANDLE hDeviceHandle;

};

