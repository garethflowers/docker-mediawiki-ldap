FROM mediawiki:1.33.1

LABEL org.opencontainers.image.authors="Gareth Flowers" \
	org.opencontainers.image.description="MediaWiki with LDAP Extensions" \
	org.opencontainers.image.licenses="MIT" \
	org.opencontainers.image.title="mediawiki-ldap" \
	org.opencontainers.image.url="https://github.com/garethflowers/docker-mediawiki-ldap" \
	org.opencontainers.image.vendor="garethflowers"

RUN apt-get update \
	&& apt-get install --yes --no-install-recommends libldap2-dev libpq-dev \
	&& docker-php-ext-install ldap pgsql pdo pdo_pgsql \
	&& rm -rf /var/lib/apt/lists \
	&& curl https://extdist.wmflabs.org/dist/extensions/LDAPProvider-REL1_31-8e93a3e.tar.gz --output /tmp/ldapprovider.tar.gz \
	&& tar --extract --file=/tmp/ldapprovider.tar.gz --directory=/var/www/html/extensions
