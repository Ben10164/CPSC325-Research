import mido

print(mido.get_output_names())
port = mido.open_output('IAC Driver Bus 1')

mid = mido.MidiFile('Clair_de_Lune.mid')

# mid.print_tracks()

import signal
import sys

msg_off = mido.Message('control_change', channel=0, control=123, value=0, time=0)
port.send(msg_off)

def signal_handler(signal, frame):
    msg_off = mido.Message('control_change', channel=0, control=123, value=0, time=0)
    port.send(msg_off)
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

for msg in mid.play():
    # print(msg)
    # port.send(msg)

    msg_dict = msg.dict()
    # print(msg_dict)

    if(msg_dict['type'] == 'note_on'):
        if(msg_dict['velocity'] == 0):
            print(msg_dict)
            new_msg = mido.Message('note_off', note=msg_dict['note'], velocity=64, time = msg_dict['time'])
            port.send(new_msg)
        else:
            port.send(msg)
    else:
        port.send(msg)


