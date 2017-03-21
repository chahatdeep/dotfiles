#!/bin/bash
#
#
#
#
if[ "$i" -le 100 ]; then
	i=20;
fi
i=i+5;
sudo tee /sys/class/backlight/acpi_video0/brightness <<<$i
