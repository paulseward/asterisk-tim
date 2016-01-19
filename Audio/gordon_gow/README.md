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
```

The recordings were then converted to 8KHz, 8bit WAV files for asterisk playback with sox.  See convert.sh for details.
