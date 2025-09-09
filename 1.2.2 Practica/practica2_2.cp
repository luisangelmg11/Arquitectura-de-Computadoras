#line 1 "C:/Users/jacin/Desktop/Practica2_2/practica2_2.c"
#line 11 "C:/Users/jacin/Desktop/Practica2_2/practica2_2.c"
void main() {
 ADCON1 = 0x07;

 TRISB = 0;
 TRISC = 0;
 TRISD = 0;
 TRISE = 0;


 PORTB = 0;
 PORTC = 0;
 PORTD = 0;
 PORTE = 0;

 while(1) {

 PORTB.RB0 = 1;
 PORTB.RB1 = 0;
 PORTC.RC2 = 1;
 PORTC.RC3 = 0;
 PORTD.RD4 = 1;
 PORTD.RD5 = 0;
 PORTE.RE0 = 1;
 PORTE.RE1 = 0;
 Delay_ms(2000);


 PORTB.RB0 = 1;
 PORTB.RB1 = 1;
 PORTC.RC2 = 0;
 PORTC.RC3 = 0;
 PORTD.RD4 = 1;
 PORTD.RD5 = 1;
 PORTE.RE0 = 0;
 PORTE.RE1 = 0;
 Delay_ms(2000);


 PORTB.RB0 = 0;
 PORTB.RB1 = 1;
 PORTC.RC2 = 1;
 PORTC.RC3 = 1;
 PORTD.RD4 = 0;
 PORTD.RD5 = 1;
 PORTE.RE0 = 1;
 PORTE.RE1 = 1;
 Delay_ms(2000);


 PORTB.RB0 = 1;
 PORTB.RB1 = 1;
 PORTC.RC2 = 1;
 PORTC.RC3 = 1;
 PORTD.RD4 = 0;
 PORTD.RD5 = 0;
 PORTE.RE0 = 0;
 PORTE.RE1 = 0;
 Delay_ms(2000);


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
