FROM ubuntu:20.04
RUN apt-get -y install \
        git \
        python3 \
        ffmpeg \
        python3-pip && \
    
