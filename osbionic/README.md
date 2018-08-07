
### osbionic
The `osbionic` is my Ubuntu Bionic Beaver (Ubuntu 18) test installation

### Purpose
* Play with CLI
* tinker with snap packages

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