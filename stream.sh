#!/bin/bash

set -e

while true
do
 ffmpeg -re -stream_loop -1 -i bg.mp4 -c:v libx264 -preset veryfast -maxrate 3000k -bufsize 6000k -pix_fmt yuv420p -g 50 -c:a aac -b:a 160k -ac 2 -ar 44100 -f flv rtmp://a.rtmp.youtube.com/live2/513d-xphe-p2qt-v3w0-4bp3
done
