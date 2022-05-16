# ytdl

> Download &amp; convert youtube videos to audio in bulk via [youtube-dl](https://github.com/ytdl-org/youtube-dl)

Tiny Makefile wrapper around [youtube-dl](https://github.com/ytdl-org/youtube-dl)

### Requirements

- Docker

### Usage

1. Download this repository

```
git clone https://github.com/kritzware/traktor-dl && cd traktor-dl/
```

2. Create a `tracks.txt` file within the repo directory, with one youtube url (or playlist/id) per line

```txt
https://www.youtube.com/watch?v=dQw4w9WgXcQ
https://www.youtube.com/watch?v=HFgXIXvsYLg
```

3. Run the Makefile to download and convert the videos to audio (`.m4a`)

```
make tracks
```

4. Enjoy your music now sitting in the `tracks/` folder!
