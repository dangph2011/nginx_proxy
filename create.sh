DOMAIN=$1
PORT=$2
FILE=${DOMAIN}.conf
CERTNAME=${DOMAIN}
cp example.conf.bk ${FILE}
sed -i 's/example/'${DOMAIN}'/g' ${FILE}
sed -i 's/9000/'${PORT}'/g' ${FILE}
certbot --nginx -d ${CERTNAME}
nginx -t
nginx -s reload
