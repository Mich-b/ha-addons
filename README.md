# Home Assistant Add-ons
[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2FMich-b%2Fha-addons)

Repository for my custom add-ons. Add to your Home Assistant by clicking the button above.

## Scrypted
Based on https://github.com/aegjoyce/ha-addons . However, this is an ingress-only version of Scrypted: no host networking enabled, meaning the add-on is only reachable from within home-assistant. Scrypted authentication is disabled since we rely on authentication of Homeassistant. 

![aarch64-support](https://img.shields.io/badge/aarch64-yes-blue.svg)
![aarch64-version](https://ghcr-badge.deta.dev/Mich-b/aarch64-ha-addon-scrypted/latest_tag?trim=major&label=latest)
![amd64-support](https://img.shields.io/badge/amd64-yes-blue.svg)
![amd64-version](https://ghcr-badge.deta.dev/Mich-b/amd64-ha-addon-scrypted/latest_tag?trim=major&label=latest)
![armv7-support](https://img.shields.io/badge/armv7-yes-blue.svg)
![armv7-version](https://ghcr-badge.deta.dev/Mich-b/armv7-ha-addon-scrypted/latest_tag?trim=major&label=latest)
![armhf-support](https://img.shields.io/badge/armhf-no-red.svg)
![i386-support](https://img.shields.io/badge/i386-no-red.svg)