############################################################
# Dockerfile
############################################################

# Set the base image
FROM alpine:3.8

############################################################
# Configuration
############################################################
ENV VERSION "1.11.3"

############################################################
# Installation
############################################################

RUN apk add --no-cache ca-certificates bash curl &&\
    curl -L https://storage.googleapis.com/kubernetes-release/release/v${VERSION}/bin/linux/amd64/kubectl -o /usr/local/bin/kubectl &&\
    chmod +x /usr/local/bin/kubectl &&\
	apk del curl

############################################################
# Execution
############################################################
CMD [ "kubectl", "--help"]