FROM alpine:3.9

RUN apk update
RUN apk add openssl curl
RUN rm -rf /var/cache/apk/
RUN rm -rf /var/lib/apk/
RUN rm -rf /var/apk/cache/

RUN curl -o /usr/local/bin/kubectl -sSL https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl
RUN chmod +x /usr/local/bin/kubectl
