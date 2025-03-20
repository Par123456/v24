FROM alpine:latest

RUN apk add --no-cache \
    bash \
    curl \
    wget \
    tar \
    socat \
    nodejs \
    npm

WORKDIR /root
RUN wget https://raw.githubusercontent.com/vaxilu/x-ui/master/install.sh
RUN chmod +x install.sh
RUN ./install.sh

EXPOSE 54321

CMD ["x-ui", "start"]
