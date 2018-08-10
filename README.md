
### Templates

| No | Use Case |
|:--:|:---------|
| 1  | Start container, run bash script, stop container |
| 2  | Try an OS: Start into CLI of the OS |
| 3  | Run a script, mounts host directory |
| 4  | Run a script, mounts host directory, has cron schedule |

### Delete all Container and Images (Tabula Rasa)
First, stop and remove all container

```
docker stop $(docker ps -a -q)
docker rm $(docker ps -a -q)
```
(Or use `docker container prune` instead of `docker rm ..`)

Second, remove all images

```
docker rmi $(docker images -q)
```


### Delete Docker.qcow2 
This is a tricky topic because Docker did not fix this issue.
There is a file `Docker.qcow2` that will grow forever and will mess up the server or development computer.
The only whay to deal with this issue is

1. Backup your Images and Container
2. Delete all Images and Container
3. Delete `Docker.qcow2`
4. Start over again with your Backups.

The deletion command is as follows.

```
find ~/Library/Containers/ -type f -name "Docker.qcow2" -exec rm -f {} \;
```

### Delete `none` tagged Images and exited containers
Remove docker images that are tagged as `<none>`, i.e. these images are **not** not tagged.

```
docker rmi -f $(docker images | grep "^<none>" | awk '{ print $3 }')
```

Delete exited containers

```
docker rm $(docker ps -qa --no-trunc --filter "status=exited")
```


### Delete unused/dangling Images
Remove orphan docker images that are not used for any container. 

```
docker rmi $(sudo docker images -f "dangling=true" -q)
```
(Or use `docker image prune -a` instead)



### Cheatsheet docker commands

| command | description |
|:-------:|:-----------:|
| `docker images` | show existing images on the machine |
| `docker ps` |  show running containers |
| `docker ps -a` |  show all existing containers |
| `docker commit -p MYCONTNAME MYIMAGNAME` | create a snapshot of a running container, i.e. Backup Your Container as Image! |
| `docker run -it MYIMAGNAME` |  create new container from image and start into the cmdline |
| `docker stop MYCONTNAME` | stop container remotely, from outside |
| `docker start -i MYCONTNAME` | start existing container with commandline (`-i` flag) |
| `docker attach MYCONTNAME` |  access cmdline of a running container |
| `docker pause MYCONTNAME` | pause/idle running container |
| `docker unpause MYCONTNAME` |  wake container up |
| `docker save -o /my/location/backupfile.tar MYIMAGNAME` |  create backup archive of the image |
| `docker load -i /my/location/backupfile.tar` |  recover from backup file |
| `docker rm MYCONTNAME` | delete a specific container |
| `docker rm $(docker ps -aq)` | delete all containers |
| `docker rm $(docker ps -aq -f status=exited)` | delete all not running containers |
| `docker tag MYIMAGNAME mydockerusername/myimagename:tagname` |  tag an image |
| `docker push mydockerusername/myimagename:tagname` |  push image to dockerhub |
| `docker run mydockerusername/myimagename` | pull and run |

Links

* https://linuxconfig.org/docker-container-backup-and-recovery
* http://stackoverflow.com/questions/16840409/how-do-you-list-containers-in-docker-io
* https://docs.docker.com/v1.10/engine/reference/commandline/cli/
* https://docs.docker.com/engine/getstarted/step_six/
 