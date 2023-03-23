import mido
import time
import random

print(mido.get_output_names())
port = mido.open_output('IAC Driver Bus 1')

msg_off = mido.Message('control_change', channel=0, control=123, value=0,time=0)
port.send(msg_off)

### We want Ctrl-C to call port.reset()

import signal
import sys

def signal_handler(signal, frame):
    msg_off = mido.Message('control_change', channel=0, control=123, value=0,time=0)
    port.send(msg_off)
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

###

for i in range(36,52):
    msg = mido.Message('note_on', note=i, velocity=100, time=0)
    port.send(msg)
    msg_off = mido.Message('note_on', note=i, velocity=0, time=96)
    port.send(msg_off)
    time.sleep(msg_off.time/200)

prev_num = 51

while(True):
    num = random.randint(36,51)
    if(prev_num == num): # this will cause a slight tempo warp...
        num = random.randint(36,51)
    msg = mido.Message('note_on', note=num, velocity=100, time=0)
    port.send(msg)
    time.sleep(msg_off.time/200)
    msg_off = mido.Message('note_on', note=num, velocity=0, time=96)
    port.send(msg_off)
    # lets make sure there arent any repeats
    prev_num = num


