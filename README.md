# Official Starbound Container on EdenServers

[![Run on EdenServers](https://img.shields.io/badge/EdenServers-view-blue.svg)](http://www.edenservers.us)
[![](https://badge.imagelayers.io/edenservers/starbound:latest.svg)](https://imagelayers.io/?images=edenservers/starbound:latest 'Get your own badge on imagelayers.io')

![](http://image.noelshack.com/fichiers/2015/35/1440708784-logos.png)

All-in-one Starbound Server Container built for [EdenServers](http://www.edenservers.us).

It also includes an SCP server.

---

**This image is meant to be used on an EdenServers Server.**

Our images are built to specifically run for our services. You can run it directly with Docker though.

---
### 1.1.0 (2016-11-10)

* Linux server path fixed (thanks @enpel)

### 1.0.0 (2015-08-27)

This initial version contains:

* *steamcmd*, and a pre-installed Starbound Server
* *scp* Server to upload and download files

---

## Install

    $ docker pull edenservers/starbound

---

## Config

Instructions for Starbound config can be found [here](http://starbounder.org/Guide:Setting_Up_Multiplayer).

| Environment Variable  | Description |
| ------------- | ------------- |
| STEAM_USERNAME | Your Steam account username  |
| STEAM_PASSWORD   | Your Steam account password  |
| USERNAME    | SCP Username  |
| PASSWORD     | SCP Password  |

| Port  | Description |
| ------------- | ------------- |
| 21025 | Starbound  |
| 21026 | Starbound  |

---

## Run example

    $ docker run -e USERNAME=edenservers -e PASSWORD=edenservers -p 1234:22 -p 21025:21025 -p 21025:21025/udp -p 21026:21026 -p 21026:21026/udp -e STEAM_USERNAME=username -e STEAM_PASSWORD=password -d edenservers/starbound

You MUST turn off Steam Guard on your account to install a Starbound Server.

---

Made by [![EdenServers](http://image.noelshack.com/fichiers/2015/35/1440630894-logo.png)](https://www.edenservers.us)
