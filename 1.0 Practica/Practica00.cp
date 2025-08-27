#line 1 "C:/Users/jacin/Desktop/Practica00.c"
void main() {
 PORTC=0;
 TRISC=0;

 while(1){
 PORTC=~PORTC;
 Delay_ms(1000);
 }
}
