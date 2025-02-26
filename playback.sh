#!/bin/bash
# Playback Script

# Short delay to allow time to transfer files
echo "Starting Video Looper in 10 seconds..."
sleep 2
echo "To cancel playback and get prompt, CTRL+C."
sleep 3
echo "Starting Video Looper in 5 seconds..."
sleep 5

# Define directory
target_dir="/home/pi/Videos"

#  Start playlist
echo "Starting Playlist..."
cvlc --no-osd --video-on-top --disable-screensaver --mouse-hide-timeout=10 --autoscale --no-video-title-show --no-interact --fullscreen --intf http --http-password 123456 --loop --playlist-enqueue --no-media-library --playlist-tree --recursive expand "$target_dir"
echo Error: playlist exit
Sleep 60
