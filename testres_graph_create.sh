#!/bin/bash

dt=date +"%Y-%m-%d-%H%M"

mkdir -p ~/klipper_config/resonance_testing

~/klipper/scripts/calibrate_shaper.py /tmp/resonances_x_*.csv -o /tmp/shaper_calibrate_x.png
~/klipper/scripts/calibrate_shaper.py /tmp/resonances_y_*.csv -o /tmp/shaper_calibrate_y.png

rm -f /tmp/resonances_*.csv


mv /tmp/shaper_calibrate_x.png "~/klipper_config/resonance_testing/x_${dt}.png"
mv /tmp/shaper_calibrate_y.png "~/klipper_config/resonance_testing/y_${dt}.png"