# MediaWiki with LDAP

A MediaWiki installation with LDAP extensions.

## How to use this image

### Start a MediaWiki Server instance

To start a container use the following:

#### ...via `docker run`

```sh
docker run \
	--name my-mediawiki-ldap \
	--detach \
	--publish 80:80 \
	garethflowers/mediawiki-ldap
```

#### ...via `docker compose`

```yml
services:
  my-mediawiki-ldap:
    image: garethflowers/mediawiki-ldap
    ports:
      - 80:80/tcp
```

## License

*	MediaWiki is released under the [GNU GPLv2 License](https://phabricator.wikimedia.org/source/mediawiki/browse/master/COPYING).
*	This image is released under the [MIT License](https://raw.githubusercontent.com/garethflowers/docker-mediawiki-ldap/master/LICENSE).
