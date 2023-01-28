#!bin/bash

# Downloads a video from Youtube with yt-dlp -> https://github.com/yt-dlp/yt-dlp
function DownloadVideo() {
    read -p "Enter the video you want to download: " video
    yt-dlp "$video"
}

export -f DownloadVideo
