# MIDI Setup

* [MIDI Setup](#midi-setup)
  * [Using Python to output MIDI to a port](#using-python-to-output-midi-to-a-port)
    * [Requirements](#requirements)
    * [General Setup](#general-setup)
    * [Ableton Setup](#ableton-setup)
  * [Notes](#notes)

## Using Python to output MIDI to a port

### Requirements

* `conda install mido`
* `pip install python-rtmidi`

### General Setup

1. Open `Audio MIDI Setup`
    ![Image 1](Images/1-Opening%20MIDI%20Setup.png)
    ![Image 2](Images/2-Audio%20Devices.png)
1. Show the `MIDI Studio` window
    ![Image 3](Images/3-show%20mid%20studio.png)
    ![Image 4](Images/4-Midi%20studio.png)
1. Double click on the IAC Driver to open its properties
    ![Image 5](Images/5-IAC%20Driver.png)
1. Check the `Device is online` option
    ![Image 6](Images/6-Turn%20on%20device.png)
1. Have a program to receive MIDI input open
    ![Image 7](Images/7-Juicy.png)
    I will be using the free program Juicy SF for this demonstration
1. Make sure the MIDI input is set to `IAC Driver Bus 1` in the `Options` tab
    ![Image 8](Images/8-Settings.png)
1. (Optional) Select a soundfont or VST for the MIDI reciever to use to play the MIDI input
1. Run `mido_test.py`
   * The MIDI file played is taken from [this site](http://www.piano-midi.de/debuss.htm)
   * The MIDI files were created by Bernd Krueger and licensed under the [cc-by-sa Germany License](http://creativecommons.org/licenses/by-sa/3.0/de/deed.en) meaning that these files can be used and adapted as long as the copyright holder is attributed

### Ableton Setup

* Follow the steps in [General Setup](#general-setup) then set the MIDI settings to be as follows

* `MIDI From` = `IAC Driver (Bus 1)
    ![Image 9](Images/9-Ableton%20Route.png)
* Add 2 `MIDI Monitor` MIDI Effects for monitoring. One on Note, and the other on Flow
    ![Image 10](Images/10-Ableton%20Monitors.png)
* Under settings, Make sure all of `IAC Driver (Bus 1)`'s settings are checked
    ![Image 10](Images/11-Ableton%20Link.png)

## Notes

* I tried doing this in a docker container, but it did not work.
  * I ran into alot of errors with the installation of 