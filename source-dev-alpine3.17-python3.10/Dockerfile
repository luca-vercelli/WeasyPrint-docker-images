
FROM alpine:3.17
# alpine 3.17 ships python 3.10.x

RUN apk add --no-cache python3 py3-pip
RUN apk add --no-cache so:libgobject-2.0.so.0 so:libpango-1.0.so.0 so:libharfbuzz.so.0 so:libharfbuzz-subset.so.0 so:libfontconfig.so.1 so:libpangoft2-1.0.so.0
RUN apk add --no-cache font-liberation font-liberation-sans-narrow ttf-linux-libertine

RUN pip install --upgrade pip
RUN pip install build

#  dockerfile ottimizzato per dev
RUN pip install pydyf >=0.11.0 cffi >=0.6 tinyhtml5 >=2.0.0b1 tinycss2 >=1.4.0 cssselect2 >=0.8.0 Pyphen >=0.9.1 Pillow >=9.1.0 fonttools[woff] >=4.0.0

WORKDIR /app

COPY . .

RUN python -m build --wheel

RUN pip install --no-cache-dir dist/*.whl

VOLUME /data
WORKDIR /data

ENTRYPOINT ["python", "-m", "weasyprint"]