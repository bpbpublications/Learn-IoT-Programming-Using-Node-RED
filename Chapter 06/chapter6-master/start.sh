#!/bin/bash
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/host/run/dbus/system_bus_socket

echo "Watch the rainbow for 5 seconds to check I'm alive..."
# Scripts in this folder run with Python3
./scripts/rainbow.py &

# Move the joystick so that the menu is visualized in the LED matrix
sleep 0.5
echo "You can always read any of temperature, pressure or humidity with sensor_menu.py, using the Sense Hat josytick"
# Workflow waits (before starting) for timeOfRainbow=5s
./scripts/sensor_menu.py &

# joystick_events.py shows the movable pixel on exiting sensor_menu.py
sleep 0.5
echo "Move the joystick to test I'm still alive..."
# Run concurrently with sensor_menu.py
# Workflow waits (before starting) for timeOfRainbow=5s + 10s
./scripts/joystick_events.py &

sleep 0.5
echo "In parallel watch the environment conditions in the container's log..."
# Workflow waits (before starting) for timeOfRainbow=5s + 15s
./scripts/weather_station.py