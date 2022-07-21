FROM debian:bullseye-slim


RUN apt-get update && \
    apt-get -y install perl imagemagick libimage-magick-perl libimage-magick-q16-perl libwww-perl git && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists

RUN cd /usr/src && \ 
    git clone https://framagit.org/groolot/gpx2png.git && \
    cd gpx2png && \
    git checkout 9682992552c9348110dfd1ab99c7de7c9d516d2a && \
    ln -s /usr/src/gpx2png/gpx2png.pl /usr/bin/gpx2png.pl