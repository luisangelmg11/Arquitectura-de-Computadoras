#line 1 "C:/Users/jacin/Desktop/Practica1/Practica1.c"
void main() {

 TRISB = 0;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;


 PORTB = 0;
 PORTC = 0;
 PORTD = 0;
 PORTE = 0;

 while(1) {

 PORTB = 0xFF;
 PORTC = 0xFF;
 PORTD = 0xFF;
 PORTE = 0xFF;

 Delay_ms(500);


 PORTB = 0x00;
 PORTC = 0x00;
 PORTD = 0x00;
 PORTE = 0x00;

 Delay_ms(500);
 }
}
