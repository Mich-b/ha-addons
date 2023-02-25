#!/usr/bin/with-contenv bashio
# ==============================================================================
# Home Assistant Add-on: Scrypted
# Configures NGINX
# ==============================================================================
declare port
declare certfile
declare dns_host
declare ingress_interface
declare ingress_port
declare keyfile
declare ingress_entry
declare name
declare value

port=$(bashio::addon.port 71864)
if bashio::var.has_value "${port}"; then
    bashio::config.require.ssl

    if bashio::config.true 'ssl'; then
        certfile=$(bashio::config 'certfile')
        keyfile=$(bashio::config 'keyfile')

        mv /etc/nginx/servers/direct-ssl.disabled /etc/nginx/servers/direct.conf
        sed -i "s#%%certfile%%#${certfile}#g" /etc/nginx/servers/direct.conf
        sed -i "s#%%keyfile%%#${keyfile}#g" /etc/nginx/servers/direct.conf

    else
        mv /etc/nginx/servers/direct.disabled /etc/nginx/servers/direct.conf
    fi
fi

for var in $(bashio::config 'env_vars|keys[]'); do
    name=$(bashio::config "env_vars[${var}].name")
    value=$(bashio::config "env_vars[${var}].value")
    echo "setting nginx \"${name}\";"
    export "${name}=${value}"
done

ingress_port=$(bashio::addon.ingress_port)
ingress_interface=$(bashio::addon.ip_address)
ingress_entry=$(bashio::addon.ingress_entry)
sed -i "s/%%port%%/${ingress_port}/g" /etc/nginx/servers/ingress.conf
sed -i "s/%%interface%%/${ingress_interface}/g" /etc/nginx/servers/ingress.conf
sed -i "s#%%ingress_entry%%#${ingress_entry}#g" /etc/nginx/servers/ingress.conf
sed -i "s/%%authorization_header%%/$SCRYPTED_ADMIN_TOKEN/g" /etc/nginx/servers/direct.conf

dns_host=$(bashio::dns.host)
sed -i "s/%%dns_host%%/${dns_host}/g" /etc/nginx/includes/resolver.conf
