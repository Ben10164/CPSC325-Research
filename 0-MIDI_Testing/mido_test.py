import mido

print(mido.get_output_names())
port = mido.open_output('IAC Driver Bus 1')
 
# MIDI taken from http://www.piano-midi.de/debuss.htm
mid = mido.MidiFile('Clair_de_Lune.mid')
for msg in mid.play():
    port.send(msg)