FROM ubuntu:latest

RUN apt update && \
	apt install -y golang-go debootstrap rsync gpg squashfs-tools git make

RUN git clone https://github.com/lxc/distrobuilder && \
    cd distrobuilder && \
	make

CMD ["/bin/bash"]