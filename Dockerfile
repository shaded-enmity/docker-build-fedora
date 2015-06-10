FROM fedora:22

RUN dnf update -y \
 && dnf install -y btrfs-progs-devel \
    curl \
    gcc \
    git \
    golang \
    lvm2-devel \
    sqlite-devel \
    ca-certificates \
    e2fsprogs \
    iptables \
    xz-devel \
    lxc \
    glibc-static

ENV AUTO_GOPATH 1
WORKDIR /usr/src/docker
COPY . /usr/src/docker
