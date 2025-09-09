
_main:

;practica2_2.c,11 :: 		void main() {
;practica2_2.c,12 :: 		ADCON1 = 0x07;   // Deshabilita entradas analógicas, todos los pines como digitales
	MOVLW      7
	MOVWF      ADCON1+0
;practica2_2.c,14 :: 		TRISB = 0; // Configura todos los pines del puerto B como salida
	CLRF       TRISB+0
;practica2_2.c,15 :: 		TRISC = 0; // Configura todos los pines del puerto C como salida
	CLRF       TRISC+0
;practica2_2.c,16 :: 		TRISD = 0; // Configura todos los pines del puerto D como salida
	CLRF       TRISD+0
;practica2_2.c,17 :: 		TRISE = 0; // Configura todos los pines del puerto E como salida
	CLRF       TRISE+0
;practica2_2.c,20 :: 		PORTB = 0;
	CLRF       PORTB+0
;practica2_2.c,21 :: 		PORTC = 0;
	CLRF       PORTC+0
;practica2_2.c,22 :: 		PORTD = 0;
	CLRF       PORTD+0
;practica2_2.c,23 :: 		PORTE = 0;
	CLRF       PORTE+0
;practica2_2.c,25 :: 		while(1) { // Ciclo infinito
L_main0:
;practica2_2.c,27 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;practica2_2.c,28 :: 		PORTB.RB1 = 0;
	BCF        PORTB+0, 1
;practica2_2.c,29 :: 		PORTC.RC2 = 1;
	BSF        PORTC+0, 2
;practica2_2.c,30 :: 		PORTC.RC3 = 0;
	BCF        PORTC+0, 3
;practica2_2.c,31 :: 		PORTD.RD4 = 1;
	BSF        PORTD+0, 4
;practica2_2.c,32 :: 		PORTD.RD5 = 0;
	BCF        PORTD+0, 5
;practica2_2.c,33 :: 		PORTE.RE0 = 1;
	BSF        PORTE+0, 0
;practica2_2.c,34 :: 		PORTE.RE1 = 0;
	BCF        PORTE+0, 1
;practica2_2.c,35 :: 		Delay_ms(2000);
	MOVLW      41
	MOVWF      R11+0
	MOVLW      150
	MOVWF      R12+0
	MOVLW      127
	MOVWF      R13+0
L_main2:
	DECFSZ     R13+0, 1
	GOTO       L_main2
	DECFSZ     R12+0, 1
	GOTO       L_main2
	DECFSZ     R11+0, 1
	GOTO       L_main2
;practica2_2.c,38 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;practica2_2.c,39 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;practica2_2.c,40 :: 		PORTC.RC2 = 0;
	BCF        PORTC+0, 2
;practica2_2.c,41 :: 		PORTC.RC3 = 0;
	BCF        PORTC+0, 3
;practica2_2.c,42 :: 		PORTD.RD4 = 1;
	BSF        PORTD+0, 4
;practica2_2.c,43 :: 		PORTD.RD5 = 1;
	BSF        PORTD+0, 5
;practica2_2.c,44 :: 		PORTE.RE0 = 0;
	BCF        PORTE+0, 0
;practica2_2.c,45 :: 		PORTE.RE1 = 0;
	BCF        PORTE+0, 1
;practica2_2.c,46 :: 		Delay_ms(2000);
	MOVLW      41
	MOVWF      R11+0
	MOVLW      150
	MOVWF      R12+0
	MOVLW      127
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;practica2_2.c,49 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;practica2_2.c,50 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;practica2_2.c,51 :: 		PORTC.RC2 = 1;
	BSF        PORTC+0, 2
;practica2_2.c,52 :: 		PORTC.RC3 = 1;
	BSF        PORTC+0, 3
;practica2_2.c,53 :: 		PORTD.RD4 = 0;
	BCF        PORTD+0, 4
;practica2_2.c,54 :: 		PORTD.RD5 = 1;
	BSF        PORTD+0, 5
;practica2_2.c,55 :: 		PORTE.RE0 = 1;
	BSF        PORTE+0, 0
;practica2_2.c,56 :: 		PORTE.RE1 = 1;
	BSF        PORTE+0, 1
;practica2_2.c,57 :: 		Delay_ms(2000);
	MOVLW      41
	MOVWF      R11+0
	MOVLW      150
	MOVWF      R12+0
	MOVLW      127
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;practica2_2.c,60 :: 		PORTB.RB0 = 1;
	BSF        PORTB+0, 0
;practica2_2.c,61 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;practica2_2.c,62 :: 		PORTC.RC2 = 1;
	BSF        PORTC+0, 2
;practica2_2.c,63 :: 		PORTC.RC3 = 1;
	BSF        PORTC+0, 3
;practica2_2.c,64 :: 		PORTD.RD4 = 0;
	BCF        PORTD+0, 4
;practica2_2.c,65 :: 		PORTD.RD5 = 0;
	BCF        PORTD+0, 5
;practica2_2.c,66 :: 		PORTE.RE0 = 0;
	BCF        PORTE+0, 0
;practica2_2.c,67 :: 		PORTE.RE1 = 0;
	BCF        PORTE+0, 1
;practica2_2.c,68 :: 		Delay_ms(2000);
	MOVLW      41
	MOVWF      R11+0
	MOVLW      150
	MOVWF      R12+0
	MOVLW      127
	MOVWF      R13+0
L_main5:
	DECFSZ     R13+0, 1
	GOTO       L_main5
	DECFSZ     R12+0, 1
	GOTO       L_main5
	DECFSZ     R11+0, 1
	GOTO       L_main5
;practica2_2.c,71 :: 		PORTB.RB0 = 0;
	BCF        PORTB+0, 0
;practica2_2.c,72 :: 		PORTB.RB1 = 1;
	BSF        PORTB+0, 1
;practica2_2.c,73 :: 		PORTC.RC2 = 0;
	BCF        PORTC+0, 2
;practica2_2.c,74 :: 		PORTC.RC3 = 1;
	BSF        PORTC+0, 3
;practica2_2.c,75 :: 		PORTD.RD4 = 0;
	BCF        PORTD+0, 4
;practica2_2.c,76 :: 		PORTD.RD5 = 1;
	BSF        PORTD+0, 5
;practica2_2.c,77 :: 		PORTE.RE0 = 0;
	BCF        PORTE+0, 0
;practica2_2.c,78 :: 		PORTE.RE1 = 1;
	BSF        PORTE+0, 1
;practica2_2.c,79 :: 		Delay_ms(2000);
	MOVLW      41
	MOVWF      R11+0
	MOVLW      150
	MOVWF      R12+0
	MOVLW      127
	MOVWF      R13+0
L_main6:
	DECFSZ     R13+0, 1
	GOTO       L_main6
	DECFSZ     R12+0, 1
	GOTO       L_main6
	DECFSZ     R11+0, 1
	GOTO       L_main6
;practica2_2.c,80 :: 		}
	GOTO       L_main0
;practica2_2.c,81 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
