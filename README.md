Asterisk TIM
============
Speaking clock implementation for asterisk, which uses samples from historical speaking clocks.

This project aims to recreate the machines which the recordings came from, as accurately as is reasonably possible.  This includes preserving "faults" or "quirks" of the particular machines the recordings came from.

See: https://github.com/paulseward/asterisk-tim

Voices
------
See the Folders in the `Audio` directory for more details, but the following voices are available

* "ETHEL" - Ethel Cain (Coming soon)
* "PAT" - Pat Simmons
* "GORDON" - Gordon Gow

The default voice is PAT

For more information about each voice, and the machines they were recorded from, see the README.md in the appropriate `Audio` subdirectory.

Instalation
-----------
* Check this repository out into `/etc/asterisk/asterisk-tim`
```
cd /etc/asterisk
git clone https://github.com/paulseward/asterisk-tim.git
```
* Create a symlink to the audio files
```
ln -s /etc/asterisk/asterisk-tim/Audio /usr/share/asterisk/sounds/TIM
```
* Add an entry to `/etc/asterisk/extensions.conf` which includes the TIM macro
```
#include /etc/asterisk/asterisk-tim/macro.conf
```
* Steer a number in your dialplan (eg 123) towards the TIM macro
```
;; 123 - Speaking clock
; ${VOICE} indicates the voice to use, the following voices are available:
; "PAT" - Pat Simmons
; "GORDON" - Gordon Gow

exten => 123,1,Macro(TIM,${VOICE})

```
* If you're not already doing so, install and configure "ntpd" to sync your servers clock with an internet time source

ToDo
----
- Noise reduction on Pat Simmons samples
- Record Ethel Cain
- Produce an alternative "Clean" Gordon Gow without the crosstalk on the minutes

Credits
-------
- Paul Seward - http://paulseward.com - Asterisk Macro, audio recordings for Gordon Gow and Ethel Cain
- Andrew Emmerson - Audio recording of Pat Simmons
