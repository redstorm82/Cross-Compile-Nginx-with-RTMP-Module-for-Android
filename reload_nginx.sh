echo "" > /data/nginx/logs/error.log
echo "" > /data/nginx/logs/access.log
/data/nginx/sbin/nginx  -p /data/nginx/  -s reload
