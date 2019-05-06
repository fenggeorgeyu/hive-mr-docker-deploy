# @version 20190302
# docker files at 
# https://github.com/big-data-europe/docker-hive

name=hive-dk1
image=bde2020/hive
host_dir=$(shell pwd)

create: compose

compose:
	docker-compose up -d

start:
	docker-compose start

stop:
	docker-compose stop

delete-all:
	docker-compose down -v

delete:
	docker-compose down

hive-bash:
	docker-compose exec hive-server /bin/bash

hive:
	docker-compose exec hive-server hive

