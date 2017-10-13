# Prestashop Dev Environment Docked Based Fast Setup

Introduction
------------

This dev environment uses Prestashop from its GitHub repository
Also uses docker to get running the whole environment

Dependencies
------------

- Docker with docker-compose
- git

Getting started
---------------

Modify the desired prestashop version on setup.sh PRESTASHOP_VERSION constant.

Then run `./setup.sh` (This will clone the desired version of prestashop)

After that run `docker-compose up` (This will pull and run the containers)

Credentials and URLs
---------------------

- Frontend store: http://localhost:8080
- Backoffice store: http://localhost:8080/admin123

Enjoy!

By @sortegam
