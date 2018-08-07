
### template2
The `template2` is used for OS test installations.

### Shortcut
First, create the container, e.g. Ubuntu Trusty

```
docker run -it --name mycoolos -d ubuntu:trusty 
```

Everytime you want to enter the Container's CLI type
```
docker exec -it mycoolos bash
```

### Purpose
* Install an operating system as container
* Start into the commandline of the operating system

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


### Dockerfile
Feel free to add some default installations, e.g. pick the operating system (`FROM`), install some packages (`RUN`).


### Links
* [template2](https://github.com/ulf1/waalfisk/tree/master/template2)