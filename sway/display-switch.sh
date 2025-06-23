#!/bin/bash

if swaymsg -t get_outputs | grep -q "DP-5"; then
	swaymsg output eDP-1 disable
	swaymsg output DP-5 enable
else
	swaymsg output DP-5 disable
	swaymsg output eDP-1 enable
fi
