#line 1 "C:/Users/Servi/OneDrive/Escritorio/Practicasbrat/Practica_02/Practica_02_01.c"
#line 22 "C:/Users/Servi/OneDrive/Escritorio/Practicasbrat/Practica_02/Practica_02_01.c"
void main(){


 TRISB = 0b11111100;
 TRISC = 0b11110011;
 TRISD = 0b11001111;
 TRISE = 0b11111100;


 PORTB = 0;
 PORTC = 0;
 PORTD = 0;
 PORTE = 0;

 while(1){


 PORTB ^= 0b00000011;
 PORTC ^= 0b00001100;
 PORTD ^= 0b00110000;
 PORTE ^= 0b00000011;

 Delay_ms(500);
 }
}
