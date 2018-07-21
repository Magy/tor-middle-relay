tor-middle-relay

[![](https://img.shields.io/docker/build/osminogin/tor-simple.svg)](https://hub.docker.com/r/osminogin/tor-simple/builds/) [![](https://images.microbadger.com/badges/version/osminogin/tor-simple.svg)](https://microbadger.com/images/osminogin/tor-simple)

**Minimal docker container to host a TOR middle relay**

The image is based on great [Alpine Linux](https://alpinelinux.org/) distribution so it is has extremely low size (less than 5 MB).

Star this project on Docker Hub :star2: https://hub.docker.com/r/magy/tor-middle-relay/

Based on [Jessfraz](https://github.com/jessfraz/dockerfiles/tree/master/tor-relay) Docker.

## Ports

* `9050` SOCKSv5 (without auth)

## Volumes

* `/var/lib/tor` data dir.


## Getting started

### Installation

Automated builds of the image are available on [Docker Hub](https://hub.docker.com/r/magy/tor-middle-relay/) and is the recommended method of installation.

```bash
docker pull magy/tor-middle-relay
```

Alternatively you can build the image yourself.

```bash
docker build -t tor github.com/Magy/tor-middle-relay
```


### Quickstart

```bash
docker run -p 127.0.0.1:9001:9001 --name tor magy/tor-middle-relay

# or
docker-compose up
```



## Environment variables

| Name                         | Description                                                                  | Default value |
| ---------------------------- |:----------------------------------------------------------------------------:| -------------:|
| **RELAY_NICKNAME**           | The nickname of your relay                                                   | hackdc        |
| **CONTACT_GPG_FINGERPRINT**  | Your GPG ID or fingerprint                                                   | none          |
| **CONTACT_NAME**             | Your name                                                                    | none          |
| **CONTACT_EMAIL**            | Your contact email                                                           | none          |
| **RELAY_BANDWIDTH_RATE**     | Limit how much traffic will be allowed through your relay (must be > 20KB/s) | 1000 KBytes   |
| **RELAY_BANDWIDTH_BURST**    | Allow temporary bursts up to a certain amount                                | 1000 KBytes   |
| **RELAY_PORT**               | Default port used for incoming Tor connections (ORPort)                      | 9001          |
