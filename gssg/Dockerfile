FROM golang:alpine

RUN apk add --no-cache make git

RUN git clone https://git.sr.ht/~gsthnz/gssg /tmp/gssg && \
    make -C /tmp/gssg install && \
    rm -rf /tmp/gssg

ENTRYPOINT ["gssg"]
