FROM php:7.2-fpm-buster

ARG ACCEPT_EULA=Y

RUN apt-get update \
    && apt-get -y --no-install-recommends install locales apt-transport-https gnupg2 libpng-dev libicu-dev libxslt-dev

RUN curl https://packages.microsoft.com/keys/microsoft.asc | apt-key add - \
    && curl https://packages.microsoft.com/config/debian/10/prod.list \
    > /etc/apt/sources.list.d/packages-microsoft-prod.list \
    && echo "en_US.UTF-8 UTF-8" > /etc/locale.gen \
    && locale-gen \
    && apt-get update \
    && apt-get -y --no-install-recommends install unixodbc-dev msodbcsql17

RUN docker-php-ext-install bcmath calendar gd intl mysqli pdo_mysql xsl zip

RUN pecl install sqlsrv-5.8.1

RUN pecl install pdo_sqlsrv-5.8.1

RUN docker-php-ext-enable sqlsrv pdo_sqlsrv

COPY --from=composer:2 /usr/bin/composer /usr/bin/composer
