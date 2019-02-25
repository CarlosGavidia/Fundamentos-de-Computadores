/*-------------------------------------------------------------------
**
**  Fichero:
**    44b.h  10/6/2014
**
**    (c) J.M. Mendias
**    Programación de Sistemas y Dispositivos
**    Facultad de Informática. Universidad Complutense de Madrid
**
**  Propósito:
**    Creación de nemotécnicos para los registros de los
**    controladores de dispositivos internos del chip S3C44BOX
**
**  Notas de diseño:
**    Las direcciones usadas asumen un alineamiento little-endian
**
**-----------------------------------------------------------------*/

#ifndef PORTS_H_
#define PORTS_H_

// GPIO
#define rPDATB    (*(volatile unsigned int*) 0x1d2000c)
#define rPCONB    (*(volatile unsigned int*) 0x1d20008)
#define rPCONG    (*(volatile unsigned int*) 0x1d20040)
#define rPDATG    (*(volatile unsigned int*) 0x1d20044)
#define rPUPG     (*(volatile unsigned int*) 0x1d20048)

// DISPLAY
#define LED8ADDR (*(volatile unsigned char*) 0x2140000)

// Watchdog
#define rWTCON      (*(volatile unsigned *) 0x1d30000)
#define rWTDAT      (*(volatile unsigned *) 0x1d30004)
#define rWTCNT      (*(volatile unsigned *) 0x1d30008)

#endif
