
### template3
The `template3` docker example calls `script.sh` as `ENTRYPOINT` 
and have a mounting point to a host directory.

### Purpose
* run bash scripts (`script.sh`)
* read, store, process data on a host directory via a mounting point.

### Commands
Use the following commands to install, start, or uninstall the images or container.

| command | description |
|:-------:|:-----------:|
| `./config uninstall` | Cleanup previous installations |
| `vi config.conf` | Increment the version |
| `./config.sh build run` | Build the Image and instantiate the Container |
| `./config.sh start` | Start the Container again |

Requires execution rights for `config.sh`.
For example, run `chmod u+x config.sh` to call `./config.sh ...`.
Otherwise call `bash config.sh ...`.


### script.sh
Contains code called by `ENTRYPOINT`.

Make the script executable for the docker container,
i.e. `chmod u+x script.sh`.

### Dockerfile
Nothing to say about it.


### Links
* [template3](https://github.com/ulf1/waalfisk/tree/master/template3)