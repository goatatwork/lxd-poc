## Distrobuilder

The included Dockerfile can be used to build a general purpose container to run `distrobuilder`.

```
docker build -t distrobuilder:latest .
```

Or name it as you see fit. Then feed the included image config into distrobuilder to create LXD images.

```
docker run -it --rm --cap-add SYS_ADMIN -v $(pwd):/image -w /image distrobuilder:latest /bin/bash -c "/root/go/bin/distrobuilder --timeout 3600 build-lxd images/ubuntu.yml -o image.architecture='x86_64',image.release='focal' --type=unified"
```
