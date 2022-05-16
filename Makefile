DOWNLOAD_FOLDER="/workdir/tracks/%(title)s.%(ext)s"

tracks:
	docker run \
		--rm -i \
		-e PGID=$(shell id -g) \
		-e PUID=$(shell id -u) \
		-v ${PWD}:/workdir:rw \
		mikenye/youtube-dl \
			-a ./tracks.txt \
			-o ${DOWNLOAD_FOLDER} \
			-f 'bestaudio[ext=m4a]' \
			--add-metadata

.PHONY: tracks