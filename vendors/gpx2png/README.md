# docker-gpx2png
Docker image for running
https://wiki.openstreetmap.org/wiki/Gpx2png
## Build
```
docker build -t "gpx2png" .
```
## Usage
Sample.gpx must be in current working directory.

Generated file will be in map.png in current working directory.
```
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl /data/sample.gpx
```
## Help
```
docker run --rm -v $(PWD):/data/ -w /tmp gpx2png gpx2png.pl -h
```
