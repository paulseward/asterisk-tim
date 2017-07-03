#!/bin/bash
# needs aplay
#
# On a minimal debian install, you'll need to install and configure alsa
# sudo apt-get install alsa-base alsa-oss alsa-utils
# sudo alsactl init
#
# RedHat hasn't been tested yet

PREFIX=`dirname "${BASH_SOURCE[0]}"`

NOW_TIME_H=`date +%H`.wav
NOW_TIME_M=`date +%M`.wav
NEXT_TIME_H=`date +%H --date '+1 min'`.wav
NEXT_TIME_M=`date +%M --date '+1 min'`.wav

aplay -q \
  ${PREFIX}/pat_simmons/the_phrase.wav \
  ${PREFIX}/pat_simmons/${NOW_TIME_H} \
  ${PREFIX}/pat_simmons/${NOW_TIME_M} \
  ${PREFIX}/pat_simmons/and_10_seconds.wav \
  ${PREFIX}/pat_simmons/pips.wav \
  ${PREFIX}/pat_simmons/the_phrase.wav \
  ${PREFIX}/pat_simmons/${NOW_TIME_H} \
  ${PREFIX}/pat_simmons/${NOW_TIME_M} \
  ${PREFIX}/pat_simmons/and_20_seconds.wav \
  ${PREFIX}/pat_simmons/pips.wav \
  ${PREFIX}/pat_simmons/the_phrase.wav \
  ${PREFIX}/pat_simmons/${NOW_TIME_H} \
  ${PREFIX}/pat_simmons/${NOW_TIME_M} \
  ${PREFIX}/pat_simmons/and_30_seconds.wav \
  ${PREFIX}/pat_simmons/pips.wav \
  ${PREFIX}/pat_simmons/the_phrase.wav \
  ${PREFIX}/pat_simmons/${NOW_TIME_H} \
  ${PREFIX}/pat_simmons/${NOW_TIME_M} \
  ${PREFIX}/pat_simmons/and_40_seconds.wav \
  ${PREFIX}/pat_simmons/pips.wav \
  ${PREFIX}/pat_simmons/the_phrase.wav \
  ${PREFIX}/pat_simmons/${NOW_TIME_H} \
  ${PREFIX}/pat_simmons/${NOW_TIME_M} \
  ${PREFIX}/pat_simmons/and_50_seconds.wav \
  ${PREFIX}/pat_simmons/pips.wav \
  ${PREFIX}/pat_simmons/the_phrase.wav \
  ${PREFIX}/pat_simmons/${NEXT_TIME_H} \
  ${PREFIX}/pat_simmons/${NEXT_TIME_M} \
  ${PREFIX}/pat_simmons/precisely.wav \
  ${PREFIX}/pat_simmons/pips.wav

