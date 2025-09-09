#line 1 "C:/Users/Servi/OneDrive/Escritorio/Practicasbrat/Practica_01/Practica_01_02.c"
#line 20 "C:/Users/Servi/OneDrive/Escritorio/Practicasbrat/Practica_01/Practica_01_02.c"
void main() {


 TRISB = 0xFC;
 TRISC = 0xF3;
 TRISD = 0xCF;
 TRISE = 0xFC;


 PORTB = 0x00;
 PORTC = 0x00;
 PORTD = 0x00;
 PORTE = 0x00;

 while(1) {


 PORTB = 0x03;
 PORTC = 0x0C;
 PORTD = 0x30;
 PORTE = 0x03;


 Delay_ms(500);


 PORTB = 0x00;
 PORTC = 0x00;
 PORTD = 0x00;
 PORTE = 0x00;


 Delay_ms(500);
 }
}
