FROM mediawiki:1.33.1

RUN apt-get update \
	&& apt-get install -y --no-install-recommends libldap2-dev libpq-dev \
	&& docker-php-ext-install ldap pgsql pdo pdo_pgsql \
	&& rm -rf /var/lib/apt/lists
