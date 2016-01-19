Asterisk TIM
============
Speaking clock implementation for asterisk, which uses samples from historical speaking clocks.

See: https://github.com/paulseward/asterisk-tim

Voices
------
See the Folders in the `Audio` directory for more details, but the following voices are available

* "ETHEL" - Ethel Cain (Coming soon)
* "PAT" - Pat Simmons
* "GORDON" - Gordon Gow (Coming soon)

The default voice is PAT

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

exten => 123,1,Macro(TIM,${VOICE})

```
* If you're not already doing so, install and configure "ntpd" to sync your servers clock with an internet time source

ToDo
----
- Noise reduction on Pat Simmons samples
- Record Ethel Cain

Credits
-------
- Paul Seward - http://paulseward.com - Asterisk Macro, audio recordings for Gordon Gow and Ethel Cain
- Andrew Emmerson - Audio recording of Pat Simmons
