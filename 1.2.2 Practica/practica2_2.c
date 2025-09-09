/*    ARQUITECTURA DE COMPUTADORAS           Ing. Daniel López Piña       UAMM-UAT
      Integrantes:
                   Montoya Garza Luis Angel
                   Hernández Ruíz Haydee Michelle
                   Rueda Martínez Alison Michelle
                   Silva Sánchez Yamilka Arely
*     Practica 03: Secuencia de 8 salidas en varios puertos
*     PIC16F877A   16Mhz
*/

void main() {
     ADCON1 = 0x07;   // Deshabilita entradas analógicas, todos los pines como digitales
    // Configura los puertos B, C, D y E como salida
    TRISB = 0; // Configura todos los pines del puerto B como salida
    TRISC = 0; // Configura todos los pines del puerto C como salida
    TRISD = 0; // Configura todos los pines del puerto D como salida
    TRISE = 0; // Configura todos los pines del puerto E como salida

    // Inicializa los puertos en 0
    PORTB = 0;
    PORTC = 0;
    PORTD = 0;
    PORTE = 0;

    while(1) { // Ciclo infinito
        // Secuencia 1: RB0=1, RB1=0, RC2=1, RC3=0, RD4=1, RD5=0, RE0=1, RE1=0
        PORTB.RB0 = 1;
        PORTB.RB1 = 0;
        PORTC.RC2 = 1;
        PORTC.RC3 = 0;
        PORTD.RD4 = 1;
        PORTD.RD5 = 0;
        PORTE.RE0 = 1;
        PORTE.RE1 = 0;
        Delay_ms(2000);

        // Secuencia 2: RB0=1, RB1=1, RC2=0, RC3=0, RD4=1, RD5=1, RE0=0, RE1=0
        PORTB.RB0 = 1;
        PORTB.RB1 = 1;
        PORTC.RC2 = 0;
        PORTC.RC3 = 0;
        PORTD.RD4 = 1;
        PORTD.RD5 = 1;
        PORTE.RE0 = 0;
        PORTE.RE1 = 0;
        Delay_ms(2000);

        // Secuencia 3: RB0=0, RB1=1, RC2=1, RC3=1, RD4=0, RD5=1, RE0=1, RE1=1
        PORTB.RB0 = 0;
        PORTB.RB1 = 1;
        PORTC.RC2 = 1;
        PORTC.RC3 = 1;
        PORTD.RD4 = 0;
        PORTD.RD5 = 1;
        PORTE.RE0 = 1;
        PORTE.RE1 = 1;
        Delay_ms(2000);

        // Secuencia 4: RB0=1, RB1=1, RC2=1, RC3=1, RD4=0, RD5=0, RE0=0, RE1=0
        PORTB.RB0 = 1;
        PORTB.RB1 = 1;
        PORTC.RC2 = 1;
        PORTC.RC3 = 1;
        PORTD.RD4 = 0;
        PORTD.RD5 = 0;
        PORTE.RE0 = 0;
        PORTE.RE1 = 0;
        Delay_ms(2000);

        // Secuencia 5: RB0=0, RB1=1, RC2=0, RC3=1, RD4=0, RD5=1, RE0=0, RE1=1
        PORTB.RB0 = 0;
        PORTB.RB1 = 1;
        PORTC.RC2 = 0;
        PORTC.RC3 = 1;
        PORTD.RD4 = 0;
        PORTD.RD5 = 1;
        PORTE.RE0 = 0;
        PORTE.RE1 = 1;
        Delay_ms(2000);
    }
}