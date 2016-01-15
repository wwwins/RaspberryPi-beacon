import RPi.GPIO as GPIO
import time

LED_PIN = 11

GPIO.setmode(GPIO.BOARD)
GPIO.setwarnings(False)
GPIO.setup(LED_PIN,GPIO.OUT)    

def flash_led(pin, count, interval=1):
    for i in range(count):
        GPIO.output(pin, GPIO.HIGH)
        time.sleep(interval)
        GPIO.output(pin, GPIO.LOW)
        time.sleep(interval)

def flash_leds(pin_list, count, interval=1):
    for i in range(count):
        for pin in pin_list:
            GPIO.output(pin, GPIO.HIGH)
        time.sleep(interval)
        for pin in pin_list:
            GPIO.output(pin, GPIO.LOW)
        time.sleep(interval)

def clean():
    GPIO.cleanup()
    
#flash_led(LED,1)
#GPIO.cleanup()