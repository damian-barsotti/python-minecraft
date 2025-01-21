ARG PYTHON_TAG=3.9.16-bullseye

FROM python:${PYTHON_TAG}

MAINTAINER Damian Barsotti <damian.barsotti@unc.edu.ar>

# install mcpi
RUN pip install "mcpi==1.2.1" idle

ARG DEBIAN_FRONTEND=noninteractive

RUN wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg

RUN echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | tee /etc/apt/sources.list.d/vscodium.list

RUN apt-get update -q &&\
    apt-get install -yq  socat &&\
    apt-get install -yq codium
