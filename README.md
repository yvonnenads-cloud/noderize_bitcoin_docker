# Official Bitcoin node as a Docker

![Docker Pulls](https://img.shields.io/docker/pulls/mushsw/noderize_bitcoin)
![Docker Image Version](https://img.shields.io/docker/v/mushsw/noderize_bitcoin)

Official Bitcoin node as a Docker image, unmodified.

## Run

```
// pull
docker pull mushsw/noderize_bitcoin:latest

// run
docker run -d -it --name noderize_bitcoin -p 127.0.0.1:3000:3000 -v ./NODE_DATA:/mnt/data mushsw/noderize_bitcoin:latest
```

## Build and run from source code

```
// build
docker build -t noderize_bitcoin .

// run
docker run -d -it --name noderize_bitcoin -p 127.0.0.1:3000:3000 -v ./NODE_DATA:/mnt/data noderize_bitcoin
```

## Upload DockerHub

```
// upload specific version
docker tag noderize_bitcoin:latest mushsw/noderize_bitcoin:[version]
docker push mushsw/noderize_bitcoin:[version]

// upload latest
docker tag mushsw/noderize_bitcoin:[version] mushsw/noderize_bitcoin:latest
docker push mushsw/noderize_bitcoin:latest
```

---

Maintained by [NodeRize](https://noderize.com)
