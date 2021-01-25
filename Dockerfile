FROM ubuntu:20.04
RUN apt-get install -yqq locales  && \ 
    apt-get install --no-install-recommends -yqq \
        supervisor \
        sudo \
        tzdata \
        #vim \
        mc \
        ca-certificates \
        xterm \
        curl \
        wget \
        wmctrl && \
    ln -fs /usr/share/zoneinfo/UTC /etc/localtime && dpkg-reconfigure -f noninteractive tzdata && \
    apt-get update -y && \
    apt-get -y install \
        git \
        python3 \
        ffmpeg \
        python3-pip && \
        
        
COPY bot.sh /root/
CMD ["/bin/bash", "/root/bot.sh"]
    
