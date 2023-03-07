ARG PYTHON_TAG=3.9.16-bullseye

FROM python:${PYTHON_TAG}

MAINTAINER Damian Barsotti <damian.barsotti@unc.edu.ar>

# install mcpi
RUN pip install "mcpi==1.2.1"

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && apt-get install -yq  socat
