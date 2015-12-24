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
```
* Steer a number in your dialplan towards the TIM macro
```
```


To use this speaking clock:

1 - copy the TIM directory to your asterisk sounds directory (eg /usr/share/asterisk/sounds/TIM)
2 - add the [macro-SpeakingClock-PatSimmons] macro to your extensions.conf
3 - add something like the following to make the clock available on 123

;; 123 - Speaking clock
exten => 123,1,Macro(SpeakingClock-PatSimmons)

4 - If you're not already doing so, install and configure "ntpd" to sync your servers clock with an internet time source

Cheers

-Paul
www.paulseward.com
