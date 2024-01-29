# simple-spa
![Static Badge](https://img.shields.io/badge/sirbyalive%2Fsimple--spa-0d1117?logo=github&logoColor=white&link=https%3A%2F%2Fgithub.com%2FSirbyAlive%2Fsimple-spa)$~$
![Static Badge](https://img.shields.io/badge/sirbyalive%2Fsimple--spa-1D63ED?logo=docker&logoColor=white&link=https%3A%2F%2Fhub.docker.com%2Frepository%2Fdocker%2Fsirbyalive%2Fsimple-spa) 


A simple image to contenerize your simgle app application. Based on Alpine linux, served by Nginx.

## Features
- Any htmls paths returns `/index.html`.
- **Custom 404:** files not found will resolved to a 404.html file if present, nginx default if not.
- **Cache:** static files served with a 30 days cache, htmls have no cache.
- **Compression:** *gzip* and *brotli* compressions enabled on non-binary files.

## Usage
This image aims at giving a simple mean to serve a bundled spa along your backend stack.

### Run with volume
You can serve the content of your build directory by mounting it as volume to `/app`.
```bash
$ docker run -p 80:80 -v ./dist:/app sirbyalive/simple-spa
```

### Build an image
You can bundle your app as image for ease of deployement. Create a Dockerfile that copies your build directory to `/app`.
```docker
FROM sirbyalive/simple-spa:lastest
COPY [dist folder] /app
```

## Compression:
*gzip* and *brotli* compressions are enabled for non-binary files.Target types include :
```
text/html
text/css
text/plain
text/xml
text/x-component
text/javascript
application/x-javascript
application/javascript
application/json
application/manifest+json
application/vnd.api+json
application/xml
application/xhtml+xml
application/rss+xml
application/atom+xml
application/vnd.ms-fontobject
application/x-font-ttf
application/x-font-opentype
application/x-font-truetype
image/svg+xml
image/x-icon
image/vnd.microsoft.icon
font/ttf
font/eot
font/otf
font/opentype
```
