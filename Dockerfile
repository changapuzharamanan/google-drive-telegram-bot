FROM ubuntu:20.04
RUN apt-get -y install \
        git \
        python3 \
        ffmpeg \
        python3-pip && \
    git clone https://github.com/viperadnan-git/google-drive-telegram-bot && \
    cd google-drive-telegram-bot && \
    pip3 install -r requirements.txt
    python3 -m bot
    
