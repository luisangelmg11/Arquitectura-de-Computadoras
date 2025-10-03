from machine import Pin, I2C, ADC
import ssd1306
from time import sleep_ms

i2c = I2C(0, scl=Pin(5), sda=Pin(4), freq=400000)
oled = ssd1306.SSD1306_I2C(128, 64, i2c)

pot = ADC(26)

while True:
    lectura = pot.read_u16()
    porcentaje = int((lectura / 65535) * 100)

    oled.fill(0)
    oled.text("Potenciometro", 0, 0)
    oled.text("ADC: {}".format(lectura), 0, 10)
    oled.text("Porcentaje:", 0, 30)
    oled.text("{} %".format(porcentaje), 0, 40)
    oled.show()

    sleep_ms(200)
