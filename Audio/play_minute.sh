#!/bin/bash

NOW_TIME_H=`date +%H`.wav
NOW_TIME_M=`date +%M`.wav
NEXT_TIME_H=`date +%H --date '+1 min'`.wav
NEXT_TIME_M=`date +%M --date '+1 min'`.wav

aplay -q \
  pat_simmons/the_phrase.wav \
  pat_simmons/${NOW_TIME_H} \
  pat_simmons/${NOW_TIME_M} \
  pat_simmons/and_10_seconds.wav \
  pat_simmons/pips.wav \
  pat_simmons/the_phrase.wav \
  pat_simmons/${NOW_TIME_H} \
  pat_simmons/${NOW_TIME_M} \
  pat_simmons/and_20_seconds.wav \
  pat_simmons/pips.wav \
  pat_simmons/the_phrase.wav \
  pat_simmons/${NOW_TIME_H} \
  pat_simmons/${NOW_TIME_M} \
  pat_simmons/and_30_seconds.wav \
  pat_simmons/pips.wav \
  pat_simmons/the_phrase.wav \
  pat_simmons/${NOW_TIME_H} \
  pat_simmons/${NOW_TIME_M} \
  pat_simmons/and_40_seconds.wav \
  pat_simmons/pips.wav \
  pat_simmons/the_phrase.wav \
  pat_simmons/${NOW_TIME_H} \
  pat_simmons/${NOW_TIME_M} \
  pat_simmons/and_50_seconds.wav \
  pat_simmons/pips.wav \
  pat_simmons/the_phrase.wav \
  pat_simmons/${NEXT_TIME_H} \
  pat_simmons/${NEXT_TIME_M} \
  pat_simmons/precisely.wav \
  pat_simmons/pips.wav

