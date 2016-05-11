# armhf-registry

Minimal [Docker Registry](https://docs.docker.com/registry/) image for the ARM architecture, built from the `scratch` image. Current image size is 11 MiB. ARMv5 and up are supported.

## Example
````sh
$ docker run -d -v /srv/registry:/data -p 5000:5000 --name registry silverwind/armhf-registry
````

### Documentation
See the [official registry documentation](https://docs.docker.com/registry/deploying/).

*Note: this image was named `registry-armhf` previously.*

© [silverwind](https://github.com/silverwind), distributed under BSD licence.
