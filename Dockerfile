FROM alpine:3.20
RUN apk update
RUN apk upgrade
RUN apk add cmake python3 openssl-dev	git build-base zlib-dev openssl
WORKDIR /work
ADD https://github.com/mtrojnar/osslsigncode.git /work/osslsigncode/
WORKDIR /work/osslsigncode/build
RUN cmake -S ..
RUN cmake --build .
RUN cmake --install .
