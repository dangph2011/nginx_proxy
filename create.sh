DOMAIN=$1
PORT=$2
FILE=${DOMAIN}.conf
CERTNAME=${DOMAIN}
cp example.conf.bk ${FILE}
sed -i 's/example.com/'${DOMAIN}'/g' ${FILE}
sed -i 's/9000/'${PORT}'/g' ${FILE}
certbot --nginx -d ${CERTNAME}
nginx -t
nginx -s reload
#create.sh domain port
#create.sh doamin.com 9999
