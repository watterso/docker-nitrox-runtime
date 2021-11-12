FROM alpine:latest
RUN apk add --no-cache curl wget unzip
RUN curl --silent https://nitrox.rux.gg/download/start  | grep -w -o "https\:\/\/on\.rux\.gg/[a-zA-Z0-9]*"  | head -1  | wget --output-document ./nitrox.zip --quiet --input-file -
RUN mkdir nitrox-runtime/
RUN unzip nitrox.zip -d nitrox-runtime/
RUN chmod +x nitrox-runtime/*.exe
