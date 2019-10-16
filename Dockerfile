FROM mediawiki:1.33.1

ARG BUILD_DATE
ARG VERSION
ARG VCS_REF

LABEL org.label-schema.build-date=$BUILD_DATE \
	org.label-schema.docker.cmd="docker run --detach --publish 80:80 garethflowers/mediawiki-ldap" \
	org.label-schema.description="MediaWiki with LDAP Extensions" \
	org.label-schema.name="mediawiki-ldap" \
	org.label-schema.schema-version="1.0" \
	org.label-schema.url="https://www.mediawiki.org/wiki/MediaWiki" \
	org.label-schema.vcs-ref=$VCS_REF \
	org.label-schema.vcs-url="https://github.com/garethflowers/docker-mediawiki-ldap" \
	org.label-schema.vendor="garethflowers" \
	org.label-schema.version=$VERSION

RUN apt-get update \
	&& apt-get install -y --no-install-recommends libldap2-dev libpq-dev \
	&& docker-php-ext-install ldap pgsql pdo pdo_pgsql \
	&& rm -rf /var/lib/apt/lists
