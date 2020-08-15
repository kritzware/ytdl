TRACK_LIST=tracks.txt
DOWNLOAD_FOLDER="$(pwd)/tracks/%(title)s.%(ext)s"

echo "downloading tracks from $TRACK_LIST"

youtube-dl \
    -a $TRACK_LIST \
    -o $DOWNLOAD_FOLDER \
    -f 'bestaudio[ext=m4a]' \
    --add-metadata