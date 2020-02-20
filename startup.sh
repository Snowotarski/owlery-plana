#!/bin/sh

echo "Loading OWLERY"
sed -i "s|http://purl.obolibrary.org/obo/plana.owl|${OWLURL}|g" /srv/conf/application.conf

cat /srv/conf/application.conf

/usr/share/owlery/bin/owlery -Dowlery.port=8080 -Dowlery.host=0.0.0.0 -Dconfig.file=/srv/conf/application.conf
