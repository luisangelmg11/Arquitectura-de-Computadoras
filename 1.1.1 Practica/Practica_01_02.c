
/* ARQUITECTURA DE COMPUTADORAS Ing. Daniel López Piña UAMM - UAT

* Practica 01: Salida por grupo extendida

* Integrantes:  Montoya Garza Luis Angel, Hernández Ruíz Haydee Michelle, Rueda Martínez Alison Michelle y Silva Sánchez Yamilka Arely

* La instrucción TRIS (TRISA, TRISB, TRISC, TRISD, TRISE) configura el puerto como entrada o salida

* Se asigna un valor de 0 para salida y un valor de 1 para entrada

* PIC16F877A 16Mhz

* Conectar los siguientes pines a los Leds de la Entrenadora Digital:

* RB0, RB1, RC2, RC3, RD4, RD5, RE0, RE1

*/

void main() {

    // Configuración de puertos como salida
    TRISB = 0xFC;  // RB0 y RB1 como salida, el resto como entrada
    TRISC = 0xF3;  // RC2 y RC3 como salida, el resto como entrada
    TRISD = 0xCF;  // RD4 y RD5 como salida, el resto como entrada
    TRISE = 0xFC;  // RE0 y RE1 como salida, el resto como entrada

    // Inicializar todos los pines de salida a 0 (apagados)
    PORTB = 0x00;  // Apagar todos los LEDs conectados a RB0 y RB1
    PORTC = 0x00;  // Apagar todos los LEDs conectados a RC2 y RC3
    PORTD = 0x00;  // Apagar todos los LEDs conectados a RD4 y RD5
    PORTE = 0x00;  // Apagar todos los LEDs conectados a RE0 y RE1

    while(1) {     // Ciclo infinito

        // Encender todos los LEDs
        PORTB = 0x03;  // Encender RB0 y RB1
        PORTC = 0x0C;  // Encender RC2 y RC3
        PORTD = 0x30;  // Encender RD4 y RD5
        PORTE = 0x03;  // Encender RE0 y RE1

        // Retardo para mantenerlos encendidos
        Delay_ms(500);

        // Apagar todos los LEDs
        PORTB = 0x00;  // Apagar RB0 y RB1
        PORTC = 0x00;  // Apagar RC2 y RC3
        PORTD = 0x00;  // Apagar RD4 y RD5
        PORTE = 0x00;  // Apagar RE0 y RE1

        // Retardo para mantenerlos apagados
        Delay_ms(500);
    }
}