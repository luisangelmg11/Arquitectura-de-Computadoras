#line 1 "C:/Users/Servi/OneDrive/Escritorio/PracticasBRAT/SEMAFORO.c"
void main() {

 TRISA = 0x00;
 TRISB = 0x00;


 PORTA = 0x00;
 PORTB = 0x00;

 while (1) {
 PORTA = 0x04;
 PORTB = 0x02;

 Delay_ms(3000);

 PORTA = 0x01;
 PORTB = 0x04;

 Delay_ms(5000);

 PORTA = 0x02;
 PORTB = 0x04;

 Delay_ms(3000);

 PORTA = 0x04;
 PORTB = 0x01;

 Delay_ms(5000);

 }
}
