from machine import Pin
from time import sleep_ms
import _thread

boton=Pin(20, Pin.IN, Pin.PULL_DOWN)
azul=Pin(19, Pin.OUT)

verde= Pin(16, Pin.OUT)
amarillo= Pin(15, Pin.OUT)
rojo= Pin(14, Pin.OUT)

leds=(rojo, amarillo, verde)

def estado_pulsador_thread():
    while 1:
        if boton.value()==1:
            azul.toggle()
            sleep_ms(200)
        else:
            azul.value(1)
            sleep_ms(10)

_thread.start_new_thread(estado_pulsador_thread, ())

while 1:
    for led in leds:
        led.value(1)
        sleep_ms(500)
        led.value(0)
        sleep_ms(500)