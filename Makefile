INPUT_FOLDER=${list}
DOWNLOAD_FOLDER="/workdir/tracks/$(shell basename ${INPUT_FOLDER})/%(title)s.%(ext)s"

tracks:
	docker run \
		--rm -i \
		-e PGID=$(shell id -g) \
		-e PUID=$(shell id -u) \
		-v ${PWD}:/workdir:rw \
		-v $(shell dirname ${INPUT_FOLDER}):/tracks:rw \
		mikenye/youtube-dl \
			-a /tracks/$(shell basename ${INPUT_FOLDER}).txt \
			-o ${DOWNLOAD_FOLDER} \
			-f 'bestaudio[ext=m4a]' \
			--add-metadata

tracks-sc:
		docker run \
		--rm -i \
		-e PGID=$(shell id -g) \
		-e PUID=$(shell id -u) \
		-v ${PWD}:/workdir:rw \
		-v $(shell dirname ${INPUT_FOLDER}):/tracks:rw \
		mikenye/youtube-dl \
			-a /tracks/$(shell basename ${INPUT_FOLDER}).txt \
			-o ${DOWNLOAD_FOLDER} \
			-f 'bestaudio[ext=mp3]' \
			--add-metadata

.PHONY: tracks tracks-sc