# Docker PHP SQLSRV

This GitHub repository contains three Dockerfiles based on PHP Debian Buster. The three files represent each variant: cli, apache, and fpm. The PHP Docker image adds SQLSRV extensions, wkhtmltox (wkhtmltopdf and wkhtmltoimage), and Composer.

## Docker Hub Repository

The repository is set up with GitHub Actions to build and push the Docker image to the Docker Hub repository. The Docker Hub repository can be found here: https://hub.docker.com/repository/docker/ifaniqbal/php-sqlsrv.

## Usage

To use this Docker image, you can pull it from Docker Hub using the following command:

```
docker pull ifaniqbal/php-sqlsrv:7.2-fpm-buster
```

## Variants

This repository contains three variants of the Docker image:

- `cli`: This variant includes the PHP CLI binary and the SQLSRV extensions.
- `apache`: This variant includes Apache and the PHP module for Apache, as well as the SQLSRV extensions.
- `fpm`: This variant includes PHP-FPM and the SQLSRV extensions.

Each variant also includes wkhtmltox (wkhtmltopdf and wkhtmltoimage), as well as Composer.

## Contributing

If you want to contribute to this repository, you can fork it and make changes. Once you're done, you can submit a pull request. Please make sure to follow the existing coding standards and include tests for any new functionality.

If you find any issues or have any suggestions, please open an issue on the GitHub repository.
