adb disconnect
adb connect $1
adb root
touch sdcard/nginx/logs/fake
adb push sdcard/nginx /data
adb push start_nginx.sh /data/nginx/start.sh
adb shell chmod 777 /data/nginx/start.sh
