#!/bin/sh

if [ ! -f $DH_PARAM_PATH/dhpram-2048.pem ]; then
 echo -e " Creating DH-PARAM..."
 openssl dhparam -out $DH_PARAM_PATH/dhparam-2048.pem 2048
 echo -e "DH parameters creating done."
fi

docker up nginx
if [! -f  $DH_PARAM_PATH/fullchain1.pem ]; then
  echo -e " Creating SSL."
  docker run -it --rm \
  -v /docker-volumes/etc/letsencrypt:/etc/letsencrypt \
  -v /docker-volumes/var/lib/letsencrypt:/var/lib/letsencrypt \
  -v /home/janedoe/Desktop/docker-compose/datavatar/letsencrypt-site:/data/letsencrypt \
  -v "/docker-volumes/var/log/letsencrypt:/var/log/letsencrypt" \
  certbot/certbot \
  certonly --webroot \
  --register-unsafely-without-email --agree-tos \
  --webroot-path=/data/letsencrypt \
  --staging \
  -d datavatar.sytes.net
 docker restart ngninx 
fi

sleep 50m


