#/usr/bin/sh

# Usage: dell_disable_bios_fan_control.sh {fan_speed}
# where fan_speed is 0, 1 or 2
if [ -n "$1" ]
    then
        FAN_SPEED="$1"
    else
        FAN_SPEED=1
fi

I8CMD="i8kctl fan $FAN_SPEED $FAN_SPEED"
TMP_PATH="/tmp/i8cmd.log"

echo "disabling Dell BIOS fan control (this command always segfaults)..."
sudo ~/tmp/dell-bios-fan-control/dell-bios-fan-control 0

echo "lowering fan speed with \"$I8CMD\"..."
$I8CMD>$TMP_PATH && exec 0< $TMP_PATH && read line && echo "work done; previous fan speeds were $line (left and right)"

