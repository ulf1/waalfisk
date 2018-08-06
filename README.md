

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