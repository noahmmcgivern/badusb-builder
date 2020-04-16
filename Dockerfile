FROM ubuntu

RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install -y git
RUN apt-get install -y qemu-user-static
RUN apt-get install -y unzip

WORKDIR /build

RUN curl -L https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz | tar xz -C /usr/local
RUN ln -s /usr/local/go/bin/go /usr/local/bin/go

RUN curl -L -o packer.zip https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip
RUN unzip packer.zip -d /usr/local/bin
RUN rm packer.zip

RUN git clone https://github.com/mkaczanowski/packer-builder-arm.git

WORKDIR /build/packer-builder-arm

RUN go mod download
RUN go build