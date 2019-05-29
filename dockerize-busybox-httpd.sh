#!/bin/bash
set -e

dockerize -t rhysemmas/rpi-busybox-httpd \
   --add-file index.html /www/ \
   --add-file nootnoot.jpg /www/ \
   --entry '/bin/busybox' \
   --cmd 'httpd -f -p 80 -h /www' \
   /bin/busybox
