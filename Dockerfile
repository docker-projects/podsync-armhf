FROM alpine

WORKDIR /app/

RUN wget -O /usr/bin/youtube-dl https://github.com/ytdl-org/youtube-dl/releases/download/2020.03.24/youtube-dl && \
    chmod +x /usr/bin/youtube-dl

RUN apk --no-cache add ca-certificates python ffmpeg

RUN wget -O podsync.tar.gz https://github.com/mxpv/podsync/releases/download/v2.0.7/Podsync_2.0.7_Linux_armv6.tar.gz

RUN tar -xvf podsync.tar.gz && rm podsync.tar.gz

CMD ["/app/podsync"]
