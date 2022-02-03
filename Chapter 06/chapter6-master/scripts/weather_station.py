#!/usr/bin/python3
from sense_hat import SenseHat
from time import sleep

sense = SenseHat()

# Workflow execution starts (infinite loop)
data = {}
timeUpdate = 5

timeOfRainbow = 5
# Give 10 more seconds after rainbow.py ends
#  - This interval lets you play with sensor_menu.py & joystick_events.py
#  - Although sensor_menu.py & joystick_events.py run concurrently, 
#     you will only see the dot moving when quitting from sensor_menu.py
sleep(timeOfRainbow + 15)

print ("---- FOURTH TEST: Show the TEMPERATURE/HUMMIDITY/PRESSURE every ", timeUpdate, " seconds")
print ("---- This is an infinite loop that runs concurrently with THIRD TEST (move dot with the joystick)")

while True:
    data['temperature'] = sense.get_temperature()
    data['pressure']    = sense.get_pressure()
    data['humidity']    = sense.get_humidity()

    #r = requests.post(thingsboard_url, data=json.dumps(data))
    print(str(data))
    sleep(timeUpdate)