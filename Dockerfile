FROM debian:latest
LABEL MAINTAINER="https://github.com/HrYuviJoon/RootPhisher"

WORKDIR /RootPhisher/
ADD . /RootPhisher

RUN apt update && \
    apt full-upgrade -y && \
    apt install -y curl unzip wget && \
    apt install --no-install-recommends -y php && \
    apt clean
CMD ["./RootPhisher.sh"]
