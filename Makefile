init:
	@chmod +x ./setup.sh
	@./setup.sh

tracks: init
	@chmod +x ./tracks.sh
	@./tracks.sh

.PHONY: tracks