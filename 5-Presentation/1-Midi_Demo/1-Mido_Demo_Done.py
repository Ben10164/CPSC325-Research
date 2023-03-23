import mido

print(mido.get_output_names())
port = mido.open_output('IAC Driver Bus 1')

port.reset()

### We want Ctrl-C to call port.reset()

import signal
import sys

def signal_handler(signal, frame):
    msg_off = mido.Message('control_change', channel=0, control=123, value=0,time=0)
    port.send(msg_off)
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler) 
# signal interupt

###

# MIDI taken from http://www.piano-midi.de/debuss.htm
mid = mido.MidiFile('Clair_de_Lune.mid')

for msg in mid.play():
    # port.send(msg) # sends the msg to the port
    print(msg) # prints msg
    # print(msg.hex()) # prints hex
    # print(msg.dict().keys()) # prints keys
    msg_dict = msg.dict()
    if(msg_dict['type'] == "note_on"):
        if(msg_dict['velocity'] == 0):
            # So weird thing about MIDI, some (most) midi controllers use a note velocity of 0 to signal the end of a note
            # which wouldnt be weird if there wasnt a note_off msg...

            # new_msg = mido.Message('note_on', note=msg_dict['note'], velocity=0, time=msg_dict['time'])
            
            # we can listen to the signals sent for when the notes are supposed to turn off with this!
            # new_msg = mido.Message('note_on', note=msg_dict['note'], velocity=100, time=msg_dict['time'])
            
            # having note_off will be treated as velocity = 0.
            # new_msg = mido.Message('note_off', note=msg_dict['note'], velocity=0, time=msg_dict['time'])
            
            # in fact, ableton even shows it as being a note_on with a velocity of 0!! how neat...
            new_msg = mido.Message('note_off', note=msg_dict['note'], velocity=100, time=msg_dict['time']) 
            print(msg_dict)
        else:
            new_msg = mido.Message('note_on', note=msg_dict['note'], velocity=msg_dict['velocity'], time=msg_dict['time'])
        port.send(new_msg)
    else:
        port.send(msg)
    continue