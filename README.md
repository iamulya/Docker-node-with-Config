# Docker-node-with-Config
Docker setup for node with an external .npmrc file

Node version : 5.2.0

You can put all the npm specific configurations such as certificates, registry etc. in the .npmrc file.
You can set the HTTP_PROXY environment variable in the docker file.

# Build image from the Dockerfile
docker build -t <Imagename:Tag> .
