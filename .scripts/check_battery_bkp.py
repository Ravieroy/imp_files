#!/usr/bin/env python3

import subprocess
import time

def read_status():
    """
    This function reads the output of your command, finds the line with
    'percentage' (line 17, where first line = 0) and reads the figure
    """
    command = "upower -i $(upower -e | grep BAT) | grep --color=never -E percentage|xargs|cut -d' ' -f2|sed s/%//"
    get_batterydata = subprocess.Popen(["/bin/bash", "-c", command], stdout=subprocess.PIPE)
    return get_batterydata.communicate()[0].decode("utf-8").replace("\n", "")

def take_action():
    """
    When the charge is over 90% or below 20%, I assume the action does
    not have to be repeated every 10 seconds. As it is, it only runs
    1 time if charge exceeds the values. Then only if it exceeds the
    limit again.
    """
    # the two commands to run if charged over 80% or below 60%
    command_above = "notify-send 'charged over 90'%"
    command_below = "notify-send 'charged below 20%'"
    times = 0
    while True:
        charge = int(read_status())
        if charge > 90:
            if times == 0:
                subprocess.Popen(["/bin/bash", "-c", command_above])
                times = 1
        elif charge < 20:
            if times == 0:
                subprocess.Popen(["/bin/bash", "-c", command_below])
                times = 1
        else:
            times = 0
        time.sleep(60)

take_action()
