# @version 20190302
# docker files at 
# https://github.com/big-data-europe/docker-hive

name=hive-dk1
image=bde2020/hive
host_dir=$(shell pwd)
stack_name=hc

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

deploy:
	docker stack deploy -c docker-compose.yml --with-registry-auth ${stack_name}

deploy-rm:
	docker stack rm ${stack_name}

commit:
	git add -u
	git add .
	git commit -am 'make commit'
	git push
