# pcr-events
https://www.docker.com/blog/containerize-your-go-developer-environment-part-1/

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

