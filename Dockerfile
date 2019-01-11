FROM alpine:latest

MAINTAINER Matt Bentley <mbentley@mbentley.net>, Mrunal Nachankar <mrunal4888@gmail.com>

ENV SSH_ASKPASS /usr/lib/ssh/gtk-ssh-askpass

RUN echo '@edge http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories &&\
  apk --no-cache add dbus-x11 \
    mesa-gl \
    virt-manager \
    libcanberra-gtk3 \
    openssh-client \
    openssh-askpass@edge

CMD ["/usr/bin/virt-manager","--no-fork"]
