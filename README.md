# rpi-python-serial-wiringpi

Raspberry Pi compatible Docker base image with Python, C, serial support (pyserial) and GPIO support (wiringpi2, libwiringpi) preinstalled.  Adapted from [Hypriot's](https://github.com/hypriot) rpi-python.

*[rpi-python-serial-wiringpi at DockerHub](https://registry.hub.docker.com/u/acencini/rpi-python-serial-wiringpi/)
*[HypriotOS](http://blog.hypriot.com/)

Run all the commands from within the project root directory.

#### Build the Docker Image
```bash
make build
```

#### Run the Image in HypriotOS with Docker (interactively)
```
$ docker run --device /dev/mem:/dev/mem --device /dev/ttyAMA0:/dev/ttyAMA0 --privileged -ti <YOUR_IMAGE_HERE> /bin/bash
```


