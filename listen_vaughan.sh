#! /bin/bash

function start_listen 
{
	VAUGHAN_RADIO_STREAM="http://vaughanradioweb.streaming-pro.com:8057/;streamdemo_mp3.nsv"
	mplayer ${VAUGHAN_RADIO_STREAM}
}

function stop_listen
{
	killall mplayer
}

function restart_listen
{
	stop_listen
	start_listen
}

MODE="$1"

case ${MODE} in
"start")
	start_listen
	;;
"stop")
	stop_listen
	;;
"restart")
	restart_listen
	;;
*)
	VAUGHAN_SCRIPT_NAME=$(basename $0)
	echo "${VAUGHAN_SCRIPT_NAME} <start>|<stop>|<restart>"
	;;
esac


