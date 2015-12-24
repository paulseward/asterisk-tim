Asterisk TIM
============
Speaking clock implementation for asterisk, which uses samples from historical speaking clocks.

See: https://github.com/paulseward/asterisk-tim

Voices
------
* Pat Simmons, voice of the GPO Speaking clock in the UK (TIM) from 1963 to 1985
http://en.wikipedia.org/wiki/Pat_Simmons_%28voice_actor%29


Instalation
-----------
* Check this repository out into `/etc/asterisk/TIM`
* Create a symlink to the audio files
```
ln -s /etc/asterisk/TIM/Audio /usr/share/asterisk/sounds/TIM
```
* Add an entry to `/etc/asterisk/extensions.conf` which includes the TIM macro
```
#include /etc/asterisk/TIM/macro.conf
```
* Steer a number in your dialplan (eg 123) towards the TIM macro
```
;; 123 - Speaking clock
; ${VOICE} indicates the voice to use, the following voices are available:
; "PAT" - Pat Simmons

exten => 123,1,Macro(TIM,${VOICE})

```
* If you're not already doing so, install and configure "ntpd" to sync your servers clock with an internet time source

