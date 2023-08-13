#!/bin/bash
# Requirements: alsa, sox
#
# On a minimal debian install, you'll need to install and configure alsa+sox
# sudo apt-get install alsa-utils sox
# sudo alsactl init

# Playback speed fudge to take account of playback overheads, you may need to tune this
FUDGE=1.014

cd -P "$(dirname ${BASH_SOURCE[0]})"
PREFIX="$(pwd)/../Audio"

NOW_TIME_H="$(date +%I).wav"
NOW_TIME_M="$(date +%M).wav"
NEXT_TIME_H="$(date +%I --date '+1 min').wav"
NEXT_TIME_M="$(date +%M --date '+1 min').wav"

play -q -D \
  "${PREFIX}/pat_simmons/the_phrase.wav" \
  "${PREFIX}/pat_simmons/${NOW_TIME_H}" \
  "${PREFIX}/pat_simmons/${NOW_TIME_M}" \
  "${PREFIX}/pat_simmons/and_10_seconds.wav" \
  "${PREFIX}/pat_simmons/pips.wav" \
  "${PREFIX}/pat_simmons/the_phrase.wav" \
  "${PREFIX}/pat_simmons/${NOW_TIME_H}" \
  "${PREFIX}/pat_simmons/${NOW_TIME_M}" \
  "${PREFIX}/pat_simmons/and_20_seconds.wav" \
  "${PREFIX}/pat_simmons/pips.wav" \
  "${PREFIX}/pat_simmons/the_phrase.wav" \
  "${PREFIX}/pat_simmons/${NOW_TIME_H}" \
  "${PREFIX}/pat_simmons/${NOW_TIME_M}" \
  "${PREFIX}/pat_simmons/and_30_seconds.wav" \
  "${PREFIX}/pat_simmons/pips.wav" \
  "${PREFIX}/pat_simmons/the_phrase.wav" \
  "${PREFIX}/pat_simmons/${NOW_TIME_H}" \
  "${PREFIX}/pat_simmons/${NOW_TIME_M}" \
  "${PREFIX}/pat_simmons/and_40_seconds.wav" \
  "${PREFIX}/pat_simmons/pips.wav" \
  "${PREFIX}/pat_simmons/the_phrase.wav" \
  "${PREFIX}/pat_simmons/${NOW_TIME_H}" \
  "${PREFIX}/pat_simmons/${NOW_TIME_M}" \
  "${PREFIX}/pat_simmons/and_50_seconds.wav" \
  "${PREFIX}/pat_simmons/pips.wav" \
  "${PREFIX}/pat_simmons/the_phrase.wav" \
  "${PREFIX}/pat_simmons/${NEXT_TIME_H}" \
  "${PREFIX}/pat_simmons/${NEXT_TIME_M}" \
  "${PREFIX}/pat_simmons/precisely.wav" \
  "${PREFIX}/pat_simmons/pips.wav" \
  speed "${FUDGE}" &>/dev/null
