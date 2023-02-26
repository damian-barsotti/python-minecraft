ARG SPIGOT_DIGEST=sha256:007a29033be66e499e71044cccc7f47346d5b7ad86d96aa542b43032ee4ec167
ARG SPIGOT_VER=1.16.3

FROM nimmis/spigot@${SPIGOT_DIGEST}

MAINTAINER Damian Barsotti <damian.barsotti@unc.edu.ar>

RUN wget https://dlcdn.apache.org/maven/maven-3/3.9.0/binaries/apache-maven-3.9.0-bin.tar.gz

RUN tar -xzvf apache-maven-3.9.0-bin.tar.gz

# Build RaspberryJuice plugin
RUN git clone https://github.com/zhuowei/RaspberryJuice.git &&\
    cd RaspberryJuice &&\
    ../apache-maven-3.9.0/bin/mvn package

# Move RaspberryJuice plugin for later use
RUN mv RaspberryJuice/target/raspberryjuice-*.jar RaspberryJuice/target/classes/*.yml /usr/local/src/

# Clean
RUN cd .. &&\
    rm -rf apache-maven-3.9.0-bin.tar.gz apache-maven-3.9.0/ RaspberryJuice/ .m2/

# Add extra files needed
COPY rootfs /
