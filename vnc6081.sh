#!/bin/bash

~/noVNC/utils/launch.sh  --listen 6081 --vnc localhost:5901 --web ./noVNC/

netstat -atn | grep EST
