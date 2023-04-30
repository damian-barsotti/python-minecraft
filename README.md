# Python Minecraft

Dockerized Python Minecraft API for the book [Learn to Program with Minecraft](https://nostarch.com/programwithminecraft).

## Install instructions

### Install Docker

See [Docker](https://docs.docker.com/get-docker/).

### Run

```sh
./install.sh
```                      

```sh
./start.sh
```                      

and wait until
```sh
./logs.sh
```
finishes.

### Lunch Minecraft

1. Start minecraft luncher.
1. Select '1.16.5' Minecraft's version.
1. Select Multiplayer game.
1. Select localhost server.

### To Lunch Idle ide

```sh
./ide.sh
```
'workdir' git folder is mounted at home inside the ide.

### Stop server

```sh
./stop.sh
```

### Show Spigot logs

```sh
mc-log.sh
```

### Define server operator

```sh
mc-send.sh op <player name>
```
