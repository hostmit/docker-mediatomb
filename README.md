# docker-mediatomb

This is dockerized vesion of mediatomb - DLNA server. Host mode is must. Attach media directory with -v /localmediadir:/media, add it to scan list later over web interface, usually on port 49152 or higher, in case that one is used. Edit entrypoint.sh for proper network interface /usr/bin/mediatomb -e IFACENAME.
I would use alpine image, but repo has no mediatomb daemon. Building from sources seemed an overkill.

In order to edit config file, which is /root/.mediatomb/config.xml inside docker container, you need something like

```bash
docker exec -it mediatomb bash
vi /root/.mediatomb/config.xml
```
If you prefer human like editor, do apt install nano.
Save changes, restart container.


## How to Build

```bash
docker build . -t mediatomb/mediatomb
```

## How to run

```bash
docker run -d --name=mediatomb --net=host -v /localmediadir:/media mediatomb/mediatomb
```

You may add more volumes same way, add them later to DB via web.

## How to manage

http://YOUR_IP:49152 # docker-mediatomb
