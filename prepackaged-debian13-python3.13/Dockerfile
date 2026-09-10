
### This image should be around 1.16GB   :o

FROM debian:13
# debian:13 (Trixie) ships python 3.13.x

RUN apt-get update && \
    apt-get install -y \
        weasyprint \
        fonts-liberation \
        fonts-liberation-sans-narrow \
        fonts-linuxlibertine && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

CMD ["bash"]

VOLUME /data
WORKDIR /data

ENTRYPOINT ["python3", "-m", "weasyprint"]