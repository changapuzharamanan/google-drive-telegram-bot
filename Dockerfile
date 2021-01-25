FROM ubuntu:20.04
RUN apt-get update -y && \
    ln -fs /usr/share/zoneinfo/UTC /etc/localtime && dpkg-reconfigure -f noninteractive tzdata && \
    apt-get -y install \
        git \
        python3 \
        ffmpeg \
        python3-pip && \
        
        
COPY bot.sh /root/
CMD ["/bin/bash", "/root/bot.sh"]
    
