#!/usr/bin/expect -f
spawn sd_monitor/server/retrieve_sd_info.sh &> sd_monitor/public/`date +%Y%H%M".txt"`

