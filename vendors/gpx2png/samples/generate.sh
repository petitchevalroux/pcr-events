#!/usr/bin/env bash

docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t standard -o /data/map-standard.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t cyclemap -o /data/map-cyclemap.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t transport -o /data/map-transport.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t opnvkarte -o /data/map-opnvkarte.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t mapquest -o /data/map-mapquest.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t toner -o /data/map-toner.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t toner-lines -o /data/map-toner-lines.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t watercolor -o /data/map-watercolor.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t thunderforest -o /data/map-thunderforest.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t hikebike -o /data/map-hikebike.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t hillshading -o /data/map-hillshading.png /data/trace.gpx
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -t transparent -o /data/map-transparent.png /data/trace.gpx