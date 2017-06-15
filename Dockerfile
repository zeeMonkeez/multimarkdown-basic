FROM alpine:latest
MAINTAINER Jonas Zimmermann <j@lessjunkmorefunk.de>

LABEL version="1.0.1"

RUN apk update && \
  apk add --no-cache  g++ gcc git make cmake curl && \
  git clone https://github.com/fletcher/MultiMarkdown-5.git && \
  cd MultiMarkdown-5/ && ./link_git_modules && ./update_git_modules && \
  make && cd build && make && make install && \
  apk del g++ gcc git cmake && \
  cd / && rm -rf /MultiMarkdown-5

# Export the output data
WORKDIR /data
VOLUME ["/data"]

ADD test /test
