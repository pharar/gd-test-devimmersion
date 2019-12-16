# Project Test Immersion - Dec'19

## Author
Nestor Angulo de Ugarte <pharar@gmail.com>
## Repository 
[https://github.com/pharar/gd-test-devimmersion](https://github.com/pharar/gd-test-devimmersion)

## Description
You're going to build the start of a web based GoDaddy ATM. It will have preloaded accounts (defined below) that have set balances. The functionality of this ATM will be limited to looking up the pre-set balances of the listed accounts. 

## Technologies

    - Docker
    - LAMP Stack
    - Bootstrap v4

## Pre-requisites and installation
Docker has to be installed in your in order to run the development environment. With it, you can run quickly a container with a simple LAMP installation to test the webap. Here there is the list of versions used in this docker image: 

    - PHP 7.3.6 
    - Apache 2.4.29
    - MySQL v5.7.26
    - Ubuntu 18.04

You can check more info here: [https://hub.docker.com/r/mattrayner/lamp](https://hub.docker.com/r/mattrayner/lamp)

To install the env, pull the image first:

```bash
$ docker pull mattrayner/lamp
```

## To Run the Dev env.
Once installed and downloaded the docker image, you can run the whole environment with MySQL info pre-loaded: 

```bash
$ docker run -i -t -p "80:80" -v "${PWD}/src":/app -v "${PWD}/mysql":/var/lib/mysql mattrayner/lamp:latest-1804
``` 

Once all is loaded, you can visit and interact the webapp using your favourite browser at localhost.