

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

### Delete `none` tagged Images
Remove docker images that are tagged as `<none>`, i.e. these images are **not** not tagged.

```
docker rmi $(docker images | grep "^<none>" | awk '{ print $3 }')
```

### Delete unused/dangling Images
Remove orphan docker images that are not used for any container. 

```
docker rmi $(sudo docker images -f "dangling=true" -q)
```
(Or use `docker image prune -a` instead)