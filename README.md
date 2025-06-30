# WeasyPrint-docker-images
Some `Dockerfile`'s for [WeasyPrint](https://github.com/Kozea/WeasyPrint).

These Docker images here are meant to run weasyprint as a CLI tool. Not as a service.

There are many possible ways to create an image:

* What pre-built image should we start with? Alpine, Debian, Ubuntu, ...?
* Use a pre-built Python image instead?
* Which Python version?
* Use pre-packaged weasyprint or build from source? Use Wheels?
* What fonts do we want installed?
* What host folders should we access?

See [documentation](https://doc.courtbouillon.org/weasyprint/stable/first_steps.html) for more.

We provide two different `Dockerfile` as examples.

## Build image - prepackaged

`cd` to desired `prepackaged*` folder. You should see a `Dockerfile` there.

Build image with:

    docker build -t weasyprint .

## Build image - from source

Download weasyprint [sources](https://github.com/Kozea/WeasyPrint/archive/refs/heads/main.zip)

Copy `.dockerignore` and desired `source*/Dockerfile` in weasyprint root folder

Build image with:

    docker build -t weasyprint .


## Build image - from source - FOR DEVELOPMENT

Download weasyprint [sources](https://github.com/Kozea/WeasyPrint/archive/refs/heads/main.zip)

Copy `.dockerignore` and desired `source-dev*/Dockerfile` in weasyprint root folder

Build image with:

    docker build -t weasyprint .

This image is larger and slower, but it builds fast.

## Run container
Run container with:

    weasyprint.bat <args>...  # Windows

or

    ./weasyprint.sh <args>... # Linux

These scripts are just shortcuts for command `docker run -v ".:/data" --rm -it weasyprint`.

weasyprint can access only files in "." folder, via Docker volumes.
