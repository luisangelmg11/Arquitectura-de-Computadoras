/* ARQUITECTURA DE COMPUTADORAS Ing. Daniel López Piña UAMM-UAT

* Practica 02: Salida individual

* Integrantes:

* Una manera de accesar a los bit individuales es a través del selector "." seguido del identificador F0, F1, ... F7

* Siendo el F7 el bit mas significativo

* Se asigna un valor de 0 para LOW y un valor de 1 para HIGH

* PIC16F877A 16Mhz

*

* Conectar todos los pines del puerto C a los leds de la Entrenadora Digital

*/


void main(){


TRISC=0; //Configura todo el puerto C (RC0, RC1, RC2, RC3, RC4, RC5, RC6 y RC7) como Salida

// TRISC=0x00; //Es el equivalente a la línea anterior, pero asignándole valor Hexadecimales

// TRISC=0b00000000; //Es otro equivalente, pero asignándole valor Binario


PORTC=0; //Apaga todo el puerto C


PORTC.F0=1; // Manda un 1 lógico (HIGH) únicamente al pin RC0

//PORTC=0x01; //Es equivalente a la línea anterior, pero asignándole valor Hexadecimales

//PORTC=0b00000001; //Es otro equivalente, pero asignándole valor Binario

Delay_ms(5000); //Espera 5 segundos


while(1){ //Inicia un ciclo infinito


PORTC.F0=1;

PORTC.F1=0;

PORTC.F2=1;

PORTC.F3=0;

PORTC.F4=1;

PORTC.F5=0;

PORTC.F6=1;

PORTC.F7=0;

// PORTC=0b01010101; // Equivale a las 8 líneas anteriores

// PORTC=0x55; // Equivalente en Hexadecimal

// PORTC=85; // Equivalente en Decimal


Delay_ms(1000); // Espera 1 Segundo

PORTC.F0=0;

PORTC.F1=1;

PORTC.F2=0;

PORTC.F3=1;

PORTC.F4=0;

PORTC.F5=1;

PORTC.F6=0;

PORTC.F7=1;

// PORTC=0b10101010; // Equivale a las 8 líneas anteriores

// PORTC=0xAA; // Equivalente en Hexadecimal

// PORTC=170; // Equivalente en Decimal


Delay_ms(1000); // Espera un segundo


}

}