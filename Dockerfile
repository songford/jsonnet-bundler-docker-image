FROM ubuntu:latest

RUN apt-get update && apt-get install -y curl

RUN curl -Lo /usr/local/bin/tk https://github.com/grafana/tanka/releases/latest/download/tk-linux-amd64
RUN curl -Lo /usr/local/bin/jb https://github.com/jsonnet-bundler/jsonnet-bundler/releases/latest/download/jb-linux-amd64

RUN chmod u+x,g+x,o+x /usr/local/bin/tk
RUN chmod u+x,g+x,o+x /usr/local/bin/jb

USER 1001
CMD ["/bin/bash"]
