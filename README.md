# armhf-registry

Minimal [Docker Registry](https://docs.docker.com/registry/) image for the ARM architecture, built from the `scratch` image. Current image size is 11 MiB. ARMv5 and up are supported.

## Setup
Install golang 1.5+  

````sh
$ make build
$ docker run -d -v /srv/registry/data:/data -p 5000:5000 --name registry crazyquark/armhf-registry
````

### Documentation
See the [official registry documentation](https://docs.docker.com/registry/deploying/).

© [silverwind](https://github.com/silverwind), distributed under BSD licence.
