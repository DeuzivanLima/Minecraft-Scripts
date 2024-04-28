#!/bin/bash

current_number=1
begin_time=$(date +%s)

change=$((1290))

while true; do
        current_time=$(date +%s)
        elapsed_time=$((current_time - begin_time))

        if [ $elapsed_time -ge $change ]; then
                current_number=$((current_number+1))
                if [ $current_number -ge 10 ]; then
                        current_number=1
                fi
                xdotool key $current_number
                begin_time=$(date +%s)
        fi

  xdotool keydown "a"
  sleep 0.5
  xdotool keyup "a"

  xdotool keydown "d"
  sleep 0.5
  xdotool keyup "d"
done
