#!/bin/sh
/home/to4/TO4Server/TOServer.sh start
until [ -f /home/to4/TO4Server/TO/Saved/Logs/TO.log ]; do sleep 1; done
nohup /home/to4/TO4Server/to4reporter -i /home/to4/TO4Server/TO4cfg.ini -l /home/to4/TO4Server/TO/Saved/Logs/TO.log &
tail -f /home/to4/TO4Server/TO/Saved/Logs/TO.log
