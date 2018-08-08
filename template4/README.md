
### template4
The `template4` docker example runs `script.sh` file as a cron job,
and have a mounting point to a host directory.

### Purpose
* run bash scripts (`script.sh`) in cron
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
Is executed as cron job.
Edit the file `script.sh` for the stuff you want to do.

## crontab
Edit in `crontab` the schedule when to execute `script.sh`. 

### Dockerfile
Nothing to say about it.


### Links
* [template4](https://github.com/ulf1/waalfisk/tree/master/template4)
* [Run a cron job with Docker](https://www.ekito.fr/people/run-a-cron-job-with-docker/)