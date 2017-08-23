#!/bin/bash

PHP_URL=https://secure.php.net/get/php-$1.tar.gz/from/this/mirror
DOWNLOAD=/tmp/php-$1.tgz

if [ ! -f $DOWNLOAD ]; then
    echo "Grabbing from $PHP_URL"
    wget -q $PHP_URL -O $DOWNLOAD
fi

echo "Grabbing md5"
md5 $DOWNLOAD
