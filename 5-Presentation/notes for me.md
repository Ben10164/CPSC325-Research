# notes

## have people install lilypond at the beginning

## 1-Midi_Demo

```py
import mido

print(mido.get_output_names())
# port = mido.open_output('IAC Driver Bus 1')
```

take note of output names, open port to said name

```py
mid = mido.MidiFile('Clair_de_Lune.mid')
mid.print_tracks()
```

```py
for msg in mid.play():  # .play will result in the midi messages
                        # with the propper amount of sleep taken in between sending them!
    # port.send(msg) # sends the msg to the port
    print(msg) # prints msg
    # print(msg.hex()) # prints hex

    msg_dict = msg.dict()
    print(msg_dict.keys())
    # print(msg_dict)

    if(msg_dict['type'] == "note_on"):
        if(msg_dict['velocity'] == 0):
            # So weird thing about MIDI, some (most) midi controllers use a note velocity of 0 to signal the end of a note
            # which wouldn't be weird if there wasn't a note_off msg...

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
```

```py
### We want Ctrl-C to call port.reset()

import signal
import sys

def signal_handler(signal, frame):
    msg_off = mido.Message('control_change', channel=0, control=123, value=0,time=0)
    port.send(msg_off)
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler) 
# signal interupt
```

```txt
note from my dad about midi timing:
if your tempo is 120,
2 beats per second
half a mil microseconds per beat 
ticks per beat and tick2second
```

## 2-LilyPond

first do `midi2ly 2-LilyPond.mid`

explore the output

des major - d + (es=flat) (C sharp / d flat)

fix the name at the end to include \"

show off the vscode extension(s)!

explore the pdf

`midi2ly La_Campanella_SCORE.mid`

talk about how it is a score file!

explore the output, note how small the tempo section is

explore the pdf... yikes

## 3-Daft_Punk_HBFS_Demo

So I was working on a music project of mine when I thought of how interesting it would be to actually use the ability to send midi signals to ports.

Daft Punk was a group that released countless influential songs during the entirety of their time together. one of the most recognizable being Harder Better Faster Stronger.

A key part to some of their live performances was chopping up the famous main riff to create new riffs. So i decided to do that with ableton and sending random signals!

go over the ableton project file, chromatic ascention

go over the python file

```py
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
    # lets make sure there aren't any repeats
    prev_num = num
```

nice job ben
