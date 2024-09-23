#!/system/bin/sh
value=$(getprop | grep "oneui" | awk -F': ' '{print $2}' | tr -d '[]')
major=$(echo $value | cut -d'0' -f1)
minor=$(echo $value | cut -d'0' -f2 | cut -c 1)
echo ️One UI版本"$major.$minor"

