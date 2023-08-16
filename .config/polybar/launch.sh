nate already running bar instances
# If all your bars have ipc enabled, you can use 
polybar-msg cmd quit
# Otherwise you can use the nuclear option:
# killall -q polybar

for i in /sys/devices/platform/coretemp.0/hwmon/hwmon*/temp1_input; do 
    if [ "$(<$(dirname $i)/name): $(cat ${i%_*}_label 2>/dev/null || echo $(basename ${i%_*}))" = "coretemp: Core 0" ]; then
        export HWMON_PATH="$i"
    fi
done

# Launch bar1 and bar2
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log
polybar primary  2>&1 | tee -a /tmp/polybar1.log & disown
polybar secondary  2>&1 | tee -a /tmp/polybar1.log & disown

echo "Bars launched..."
