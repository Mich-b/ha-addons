# Scrypted Add-on for Home Assistant

![aarch64-support](https://img.shields.io/badge/aarch64-yes-blue.svg)
![aarch64-version](https://ghcr-badge.deta.dev/Mich-b/aarch64-ha-addon-scrypted/latest_tag?trim=major&label=latest)

![amd64-support](https://img.shields.io/badge/amd64-yes-blue.svg)
![amd64-version](https://ghcr-badge.deta.dev/Mich-b/amd64-ha-addon-scrypted/latest_tag?trim=major&label=latest)

![armv7-support](https://img.shields.io/badge/armv7-yes-blue.svg)
![armv7-version](https://ghcr-badge.deta.dev/Mich-b/armv7-ha-addon-scrypted/latest_tag?trim=major&label=latest)

![armhf-support](https://img.shields.io/badge/armhf-no-red.svg)

![i386-support](https://img.shields.io/badge/i386-no-red.svg)

## About

This add-on allows you to set up Scrypted on your Home Assistant instance.

Scrypted offers many benefits, but perhaps its most useful function is providing super-low-latency HomeKit camera streaming and support for HomeKit Secure Video.

For more information about Scrypted, visit [the Scrypted website](https://scrypted.app).

Not sure which Scrypted to install? Click [here](https://github.com/koush/scrypted/wiki/Docker-Image-Tags) to find out the differences between the Full, Lite and Thin versions.

## System requirements

- Home Assistant OS or Supervised installation running on aarch64, amd64 or armv7 architecture (if you have Home Assistant Core or Container installed then install Scrypted in a separate container using the instructions at [the Scrypted GitHub page](https://github.com/koush/scrypted))8
- At least 2GB free storage space
- Raspberry Pi 4 or faster machine (performance noticeably worse on Raspberry Pi 3B)

## Installation

Add the repository [https://github.com/Mich-b/ha-addons](https://github.com/Mich-b/ha-addons) in Home Assistant (see [here](https://www.home-assistant.io/hassio/installing_third_party_addons/) for more information).

Then select the Scrypted add-on and click Install. **This may take 5-10 minutes to complete as the image is approximately 2GB in size.**

Once installed, make sure you enable Watchdog so that the Scrypted add-on will restart automatically if you need to restart Scrypted from within its UI, and add Scrypted to the sidebar.

To export your configuration and database, make and download a backup of the Scrypted add-on. Data is stored in `/scrypted_data`.

