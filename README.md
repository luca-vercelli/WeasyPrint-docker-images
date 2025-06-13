# WeasyPrint-docker-images
Some Dockerfile's for (WeasyPrint)[https://github.com/Kozea/WeasyPrint]

There are many possible ways to create an image:

* What pre-built image should we start from? Alpine, Debian, Ubuntu, ...?
* Use a pre-build Python image instead?
* Which Python version?
* Use pre-packaged weasyprint or build from source? Use Wheels?
* What fonts do we want installed?
* What host folders should we access?

See (documentation)[https://doc.courtbouillon.org/weasyprint/stable/first_steps.html#] for more.

So far we provide one Dockerfile only, but more may be added later.

## Build image

Download weasyprint (sources)[https://github.com/Kozea/WeasyPrint/archive/refs/heads/main.zip]

Copy `.dockerignore` and desired `Dockerfile` in weasyprint root folder

Build image with:

    docker build -t weasyprint .


## Run container
Run container with:

    weasyprint.bat <args>...

Latter script is a shortcut for command `docker run`.

weasyprint can access only files in "." folder, via Docker volumes.