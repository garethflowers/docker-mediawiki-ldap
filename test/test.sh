#!/bin/sh
set -ex
export IMAGE_NAME=garethflowers/mediawiki-ldap

docker build --progress plain --tag $IMAGE_NAME .
docker run --rm $IMAGE_NAME php -v

echo "\nOK"
