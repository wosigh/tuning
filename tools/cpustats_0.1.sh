#!/opt/bin/bash



LOGFILE="/media/internal/cpu_stats.log"

if [ ! -f $LOGFILE ]; then
	echo "******Format of cpu stats log file: Date/Time     CPU Temp        Load Average    CPU Frequency   Governor***" > $LOGFILE
fi

	while [ 1 -lt 2 ]; do
		DATE=$(date)
		CPUTEMP=$(cat /sys/devices/platform/omap34xx_temp/temp1_input)
		LOADAVG=$(cat /proc/loadavg)
		CPUFREQ=$(cat /sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_cur_freq)
		GOVERNOR=$(cat /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor)
		echo    "$DATE  $CPUTEMP        $LOADAVG        $CPUFREQ        $GOVERNOR" >> $LOGFILE
		sleep 5
done
