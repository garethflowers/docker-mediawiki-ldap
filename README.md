[![Build Status](https://travis-ci.org/garethflowers/docker-mediawiki-ldap.svg?branch=master)](https://travis-ci.org/garethflowers/mediawiki-ldap) [![Image Layers](https://images.microbadger.com/badges/image/garethflowers/mediawiki-ldap.svg)](https://microbadger.com/images/garethflowers/mediawiki-ldap) [![Docker Pulls](https://img.shields.io/docker/pulls/garethflowers/mediawiki-ldap.svg)](https://store.docker.com/community/images/garethflowers/mediawiki-ldap)

# MediaWiki with LDAP

A MediaWiki installation with LDAP extensions.

## How to use this image

### Start a MediaWiki Server instance

To start a container use the following:
```sh
docker run \
	--name my-mediawiki-ldap \
	--detach \
	--publish 80:80 \
	garethflowers/mediawiki-ldap
```

## License

*	MediaWiki is released under the [GNU GPLv2 License](https://phabricator.wikimedia.org/source/mediawiki/browse/master/COPYING).
*	This image is released under the [MIT License](https://raw.githubusercontent.com/garethflowers/docker-mediawiki-ldap/master/LICENSE).
