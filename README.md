# Official Bitcoin node as a Docker

![Docker Pulls](https://img.shields.io/docker/pulls/mushsw/noderize_bitcoin)
![Docker Image Version](https://img.shields.io/docker/v/mushsw/noderize_bitcoin)

Official Bitcoin node as a Docker image, unmodified.

## RUN

```
// build
docker build -t noderize_bitcoin .

// run
docker run -d -it --name noderize_bitcoin -p 127.0.0.1:3000:3000 -v ./NODE_DATA:/mnt/data noderize_bitcoin
```

## Upload DockerHub

```
// set version
docker tag noderize_bitcoin:latest mushsw/noderize_bitcoin:[version]

// upload
docker push mushsw/noderize_bitcoin:[version]
```

---

Maintained by [NodeRize](https://noderize.com)
