# pcr-events


## Run
```
make build
``` 
## Building binaries
```
make build
```
Binaries are located in bin/ directory
## Design thoughts aka Nodepad
- Command : Textual representation of a task : namespace\class::function(params)
- Task : Job to perform
- TaskQueue : Contain tasks to run
- TaskRouter : Read task from queue and write it to the correct topic
 
Source : 
id : string
type : lastfm/garmin
credentials : json
Event  :
id : string 
type : music,workout
sourceId : ref to the source

Task lists :
namespace\class::function(params)
fetch events from source (sourceId, offset, limit)
create event from source (sourceEvent)
update event from data 

## Resources
* https://www.docker.com/blog/containerize-your-go-developer-environment-part-1/
* https://levelup.gitconnected.com/setup-simple-go-development-environment-with-docker-b8b9c0d4e0a8
* https://framagit.org/groolot/gpx2png = https://wiki.openstreetmap.org/wiki/Gpx2png
* https://github.com/friek/gpx2pngservice
 