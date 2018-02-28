import time
import penguinPi as ppi


# Initialise L and R motors
motorL = ppi.Motor(ppi.AD_MOTOR_A)
motorR = ppi.Motor(ppi.AD_MOTOR_B)

# Initialise Display
display = ppi.Display(ppi.AD_DISPLAY_A)
display.set_mode('u')  # decimal mode

ppi.init()


def set_speed(motorL_speed, motorR_speed):
    motorL.set_power(motorL_speed)
    motorR.set_power(motorR_speed)
    display.set_value(motorL_speed+" "+motorR_speed)


# Move forwards
set_speed(50, 50)
time.sleep(1)  # 1s pause
