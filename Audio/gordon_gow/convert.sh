#!/bin/bash
for i in $( ls Processed_44KHz  ); do
  echo Processing Processed_44KHz/$i:
  sox Processed_44KHz/$i -c 1 -r 8000 Processed_8KHz/$i
done
echo Done!
