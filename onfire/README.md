
### Make sure that you entered the directory of the Dockerfile
```
cd onfire
```

### Cleanup previous installations
```
bash uninstall.sh
```

### Increment the version
```
vi config.conf
```

### Build the Image and instantiate the Container
```
bash build.sh && bash run.sh
```

### Start the Container again
```
bash start.sh
```