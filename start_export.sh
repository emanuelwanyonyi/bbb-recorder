#!/bin/sh
# Script to launch a live rtmp streaming session
# The script populates .env file with environment variables passed by docker-compose.yml

echo ffmpegServer=$FFMPEG_SERVER >> .env
echo ffmpegServerPort=$FFMPEG_SERVER_PORT >> .env
echo auth=$AUTH >> .env
echo copyToPath=$COPY_TO_PATH >> .env
echo playbackFile=$PLAYBACK_FILE >> .env

echo "debug env variables in .env"
cat .env
echo $EXPORT_RECORDING_URL

node export.js $EXPORT_RECORDING_URL
