FROM ubuntu:latest

RUN apt update && \
	apt install -y golang-go debootstrap rsync gpg squashfs-tools git make \
	&& apt-get -y autoremove \
    	&& apt-get clean \
    	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN git clone https://github.com/lxc/distrobuilder && \
    cd distrobuilder && \
	make

CMD ["/bin/bash"]
