# Gordon Gow
Gordon Gow was the voice of the Speaking clock in Australia from 1954 to 1990
Recordings courtesy of the London Science Museum

https://en.wikipedia.org/wiki/Speaking_clock#Australia

## Audio Processing
The samples in this recording were recorded as 44.1KHz, 32bit, Stereo WAV files.  The source files for these recordings can be found in the Source folder

The recordings were then treated with audacity as follows:
- Mix from stereo to Mono (Tracks -> Stereo Track to Mono)
- Notch Filter to remove monitoring frequency (Effect -> Plug-Ins 1-12 -> Notch Filter.  Frequency=3183Hz, Q=0.3)
- Low Pass Filter to remove much of the hiss (Effect -> Plug-Ins 1-12 -> Low Pass Filter.  Rolloff=48dB, Cutoff=3000Hz)
- Normalize to centre everything (Effect -> Normalize.  Remove DC offset, Normalize aplitude to -1.0dB)
- Export as 44.1KHz, 32bit, Mono WAV

The results can be found in the Processed_44KHz folder

The recordings were then cut up into the appropriate sections, trimmed to length with sox:
```
# Syntax : sox old.wav new.wav trim [POSITION] ([POSITION])
# If a position is preceded by an equals or minus sign, it is interpreted relative to the beginning or the end of the audio,
# respectively.  (The audio length must be known for end-relative locations to work.)

# eg to trim the first 2 seconds of audio
$ sox input.wav output.wav trim 0 2

# eg to trim the last 2 seconds of audio
$ sox input.wav output.wav trim -2
```

The recordings were then converted to 8KHz, 8bit WAV files for asterisk playback with sox.  See convert.sh for details.

## Timings
The original recordings have spikes in them where the mechanism cut over from one optical disk to the next.  Careful measurement using the cursor tool in Audacity reveals the timings to be:
"At the third stroke" - 1.9235s
"It will be three" - 1.8260s
"two" - 0.9785s
"and 10 seconds" - 1.9865s
"pip pip pip" - 3.2855s

For the purposes of this project I have quantized the samples as follows:
"At the third stroke" - 2s
"It will be three" - 2s
"two" - 1s
"and 10 seconds" - 2s
"pip pip pip" - 3s

Feel free to contribute more historically accurate timings back to the project!