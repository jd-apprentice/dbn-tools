install:
	sudo apt-get install dpkg-dev wget
	wget https://github.com/jd-apprentice/dbn-tools/releases/download/0.1.0/1.0-dbn-tools.deb
	sudo dpkg -i 1.0-dbn-tools.deb
	echo "dbn-tools installed"
	echo "run 'dbn-tools' to start the program"

build:
	chmod +x ./utils/build_new_version.sh
	./utils/build_new_version.sh

debian:
	chmod +x ./utils/debian_builder.sh
	./utils/debian_builder.sh

docker:
	docker compose up -d
	docker exec -it dbn-tools-container bash
	