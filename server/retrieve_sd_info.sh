#!/usr/bin/expect -f
set pass "tasdsys"
spawn ssh -l sdsys deltacrc.dip.jp
#echo $! >> retrieve_pid.log
set prompt ":|#|\\\$"
interact -o -nobuffer -re $prompt return
send "tasdsys\r"
set timeout 4
expect "Last login:"
interact -o -nobuffer -re $prompt return
send "ssh 192.168.254.173\r"
set timeout 4
expect "Last login:"
interact -o -nobuffer -re $prompt return
send "sdshift\r"
expect "1)"
set timeout 5
interact -o -nobuffer -re $prompt return
send "\r"
expect "2)"
set timeout 5
interact -o -nobuffer -re $prompt return
send "\r"
expect "3)"
set timeout 5
interact -o -nobuffer -re $prompt return
send "\r"
expect "wxt"
send \003
set timeout 5
interact -o -nobuffer -re $prompt return
send "exit\r"
expect "closed"
set timeout 5
interact -o -nobuffer -re $prompt return
send "exit\r"
expect "closed"

