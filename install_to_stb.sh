adb disconnect
sleep 1
adb connect $1
sleep 1
adb root
touch sdcard/nginx/logs/fake
adb push sdcard/nginx /data
adb push start_nginx.sh /data/nginx/start.sh
adb push stop_nginx.sh /data/nginx/stop.sh
adb push reload_nginx.sh /data/nginx/reload.sh
adb push nginx_proxy.conf /data/nginx/conf/nginx.conf
adb shell chmod 777 /data/nginx/*.sh
adb shell /data/nginx/stop.sh
adb shell /data/nginx/start.sh
adb shell ps | grep nginx
