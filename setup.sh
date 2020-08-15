if ! command -v youtube-dl &> /dev/null
then
    echo "youtube-dl not found, installing.."
    mkdir temp
    curl -L https://github.com/ytdl-org/youtube-dl/releases/download/2020.07.28/youtube-dl-2020.07.28.tar.gz > temp/youtube-dl.tar.gz
    tar xvzf temp/youtube-dl.tar.gz -C temp
    sudo mv temp/youtube-dl/youtube-dl /usr/local/bin/
    rm -rf temp
fi