#!/bin/bash
for i in /usr/share/sounds/*/stereo/*; do echo $i; paplay $i; sleep 1; done
