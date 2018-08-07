### bofhexcuse
`bofhexcuse` just fetches BOFH excuses from `towel.blinkenlights.nl:666` via `telnet`.

### Purpose
Get some quick excuse for stupid syadmin problems

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
Nothing to say about it.


### Links
* [template1](https://github.com/ulf1/waalfisk/tree/master/template1)
* [blinkenlights.nl](http://blinkenlights.nl/)