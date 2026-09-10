
### This image should be around 170MB

FROM alpine:3.17
# alpine 3.17 ships python 3.10.x

RUN apk add --no-cache py3-pip so:libgobject-2.0.so.0 so:libpango-1.0.so.0 so:libharfbuzz.so.0 so:libharfbuzz-subset.so.0 so:libfontconfig.so.1 so:libpangoft2-1.0.so.0
RUN apk add --no-cache weasyprint
RUN apk add --no-cache font-liberation font-liberation-sans-narrow ttf-linux-libertine

VOLUME /data
WORKDIR /data

ENTRYPOINT ["python", "-m", "weasyprint"]