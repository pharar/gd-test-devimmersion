# Project Test Immersion - Dec'19

## Author
Nestor Angulo de Ugarte <pharar@gmail.com>
## Repository 
[https://github.com/pharar/gd-test-devimmersion](https://github.com/pharar/gd-test-devimmersion)

## Description
You're going to build the start of a web based GoDaddy ATM. It will have preloaded accounts (defined below) that have set balances. The functionality of this ATM will be limited to looking up the pre-set balances of the listed accounts. 

## Used technologies
- [Docker](https://www.docker.com/)
- LAMP Stack (Linux + Apache + MySQL + PHP)
- [Bootstrap v4](https://getbootstrap.com/)
- [Font Awesome Icons](https://fontawesome.com/)

## Notes 
- About the database structure:
I have chosen a separated schema in 2 tables, in prevision of adding more info in a possible "future" of this webapp. Of course, with the given information, it is not needed to do like this, and with one only table would be more than enough.

- I could use any other technology like NodeJS and Express, Django or Ruby, all of them integrates a full stack framework to manage sesions, routes and logins - some of them have also an ORM. But the simplicity of the project called me to use old-school hand-made PHP code. There is a lot of space for improvements here for sure, but I hope it works as a quick test.

## Pre-requisites and installation
Docker has to be installed in your device in order to run the development environment. With it, you can run quickly a container with a simple LAMP installation to test the webapp. Here there is the list of versions used in this docker image: 
- Linux Ubuntu 18.04
- Apache 2.4.29
- MySQL v5.7.26
- PHP 7.3.6 

You can check more info here: [https://hub.docker.com/r/mattrayner/lamp](https://hub.docker.com/r/mattrayner/lamp)

To install the env, pull the image first:

```bash
$ docker pull mattrayner/lamp
```

## To Run the Dev env.
Once installed and downloaded the docker image, you can run the whole environment: 

```bash
$ docker run -i -t -p "80:80" -v "${PWD}/src":/app -v "${PWD}/mysql":/var/lib/mysql mattrayner/lamp:latest-1804
``` 

If it is the first time, the MySQL has to regenerate the folders and the 'admin' account. Check in the terminal for the password. After getting this working, you have to pre-load the DB info. Use any of these ways:

### 1. Using PHPMyADMIN (recommended):
- Get into 'localhost/phpmyadmin' using your favourite browser and use the user 'admin' and the password generated the first time you run the docker image (or after removing the content of the mysql folder).
- Then, create an user and a database and grant permissions to the user to this database you have just created.
- Go to the DB recently created, and run the SQL code into the './src/config/000-setup.sql'. It will create the tables and the info needed.

### 2. Manually:
- In the terminal, run the necessary commands using this structure:

```bash
$ docker exec CONTAINER_ID  mysql -uroot -e "QUERY"
```

Where the CONTAINER_ID is the ID of the container, you can check it using the following command:

```bash
$ docker ps
```

and QUERY represents the queries you need to create an user, create a DB, grant the permissions and run the .sql file located here: './src/config/000-setup.sql'.

### Last Step

- You need the following info from the user you just created in the previous steps:
   - username
   - password
   - host of the user
   - database name
   
- Rename the './src/config/db-config-sample.php' file to './src/config/db-config.php'. 
- Fill up the corresponding fields.

### Once all is loaded, you can visit and interact the webapp using your favourite browser at localhost.
Happy testing!
