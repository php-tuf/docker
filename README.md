# Docker container for TUF

## Build the Container

The contianer is based on the Setup instructions found at [PHP-TUF](https://github.com/php-tuf/php-tuf)

1. Install Docker

1. Make a local build of the docker container

       docker build https://github.com/php-tuf/docker.git#main -t tuf

1. Create a local perisisten directory

       mkdir ~/tuf

1. Run the Docker container

       docker run -i -t tuf
