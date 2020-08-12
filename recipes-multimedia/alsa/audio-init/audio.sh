#!/bin/sh

amixer -D hw:rcarsound set 'DVC In' 20% >& /dev/null
amixer -D hw:rcarsound set 'DVC Out' 20% >& /dev/null
