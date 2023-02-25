# Scrypted Add-on for Home Assistant

For more information on Scrypted, please check out the [the Scrypted website](https://scrypted.app) or [the Scrypted GitHub page](https://github.com/koush/scrypted).

# Configuration variables
`env_vars` can be used to set Scrypted environment variables. An example env_vars setting may be:

```
- name: "SCRYPTED_DISABLE_AUTHENTICATION"
  value "false"
- name: "SCRYPTED_ADMIN_TOKEN"
  value "secret"
- name: "SCRYPTED_ADMIN_USER"
  value "hassioingress"
```

Note that `SCRYPTED_ADMIN_TOKEN` can then be used in ingress.conf to automatically authenticate all requests that originate from Home Assistant. 

# Development information
The file scrypted\rootfs\etc\services.d\scrypted-run\run contains the logic to export all env_vars. 
The config.yaml then contains env_vars as option. 