# ytdl

> Download &amp; convert youtube & soundcloud videos to audio in bulk via [youtube-dl](https://github.com/ytdl-org/youtube-dl)

Tiny Makefile wrapper around [youtube-dl](https://github.com/ytdl-org/youtube-dl)

### Requirements

- Docker

### Usage

1. Download this repository

```
git clone https://github.com/kritzware/traktor-dl && cd traktor-dl/
```

2. Create a file anywhere on your machine with one youtube url (or playlist/id) per line, for example `~/tracks.txt`:

```txt
https://www.youtube.com/watch?v=dQw4w9WgXcQ
https://www.youtube.com/watch?v=HFgXIXvsYLg
```

3. Run the Makefile to download and convert the videos to audio (`.m4a`). Make sure to replace `{FILE}` with the path to your tracks file:

```
make list={FILE} tracks
```

For example, if the file is called `tracks.txt` and inside this directory:

```
make list=$(pwd)/tracks tracks
```

4. Enjoy your music now sitting in the `tracks/` folder!

**SoundCloud**

Repeat the steps above but use another file with SoundCloud links (don't mix this with YouTube links), and use `tracks-sc` instead:

```
make list={FILE} tracks-sc
```
