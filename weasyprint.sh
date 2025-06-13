#!/bin/bash
#Run weasyprint via Docker

docker run -v ".:/data" --rm -it weasyprint "$@"
