apt-get install -y curl git qemu-user-static unzip

curl -s -L https://dl.google.com/go/go1.14.2.linux-amd64.tar.gz | tar xz -C /usr/local
ln -s /usr/local/go/bin/go /usr/local/bin/go

curl -s -L -o packer.zip https://releases.hashicorp.com/packer/1.5.5/packer_1.5.5_linux_amd64.zip
unzip packer.zip -d /usr/local/bin
rm packer.zip

git clone https://github.com/mkaczanowski/packer-builder-arm.git
cd packer-builder-arm
go mod download
go build
chown -R vagrant:vagrant .