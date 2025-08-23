FROM debian:latest

WORKDIR /work
RUN apt-get update && apt-get -y install fish git curl make python3

COPY ./ ./

RUN make install
CMD ["bash"]
