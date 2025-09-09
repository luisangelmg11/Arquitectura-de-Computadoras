#line 1 "C:/Users/Servi/OneDrive/Escritorio/Semaforodoble_switch/Semaforodoble.c"
void main() {

 TRISA = 0x00;
 TRISB = 0x00;
 TRISD = 0B00000100;


 PORTA = 0x00;
 PORTB = 0x00;

 while (1) {
 if(PORTD.F2==0){

 PORTA = 0x04;
 PORTB = 0x01;
 Delay_ms(5000);


 PORTA = 0x04;
 PORTB = 0x02;
 Delay_ms(3000);


 PORTA = 0x01;
 PORTB = 0x04;
 Delay_ms(5000);


 PORTA = 0x02;
 PORTB = 0x04;
 Delay_ms(3000);
 }else{

 PORTA = 0x04;
 PORTB = 0x02;
 Delay_ms(500);
 PORTA = 0x00;
 PORTB = 0x00;
 Delay_ms(500);
 }
 }
}
