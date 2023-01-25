Distrobuilder can be built using the included Dockerfile. With the distrobuilder image created, the following Docker command will build the LXD container.

```
docker run -it --rm --cap-add SYS_ADMIN -v $(pwd):/image -w /image distrobuilder:latest /bin/bash -c "/root/go/bin/distrobuilder --timeout 3600 build-lxd images/ubuntu.yml -o image.architecture='x86_64',image.release='focal' --type=unified"
```
