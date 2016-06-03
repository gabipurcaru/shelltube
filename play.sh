#!/usr/bin/env sh

set -e

IFS="
"

key="AIzaSyDepJUVmISBuie5EVPFeXh6Mg6P8Z5wIdU"

url="https://www.googleapis.com/youtube/v3/search?key=$key&part=snippet&type=video&videoCategoryId=10&maxResults=30"

response=`curl -G $url --data-urlencode "q=$1" 2>/dev/null`

video_ids=(`echo "$response" | jq -r ".items | .[] | .id.videoId"`)
titles=(`echo "$response" | jq -r ".items | .[] | .snippet.title"`)

for ((i = 0; i < ${#video_ids[@]}; i ++)); do
	video_id=${video_ids[$i]}
	title=${titles[$i]}

	echo "Playing $title ($video_id)"
	youtube-dl -f best -o - $video_id 2>/dev/null \
		| ffplay -nodisp - 2>/dev/null &
	pid=$!
	wait
done
