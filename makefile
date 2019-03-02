# https://github.com/big-data-europe/docker-hive

name=hive-dk1
# image=prasanthj/docker-hive-on-tez
image=bde2020/hive
host_dir=$(shell pwd)
# vol1=${host_dir}/data
# mnt1=/data
vol1=${host_dir}/shared
mnt1=/shared
# vol2=${host_dir}/hadoop-root-data
# mnt2=/tmp/hadoop-root
pl1=10000
pd1=10000
pl2=8088
pd2=8088

create: compose

compose:
	docker-compose up -d

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

# create-container:
# 	[ -d ${vol1} ] || mkdir ${vol1}
# 	# [ -d ${vol2} ] || mkdir ${vol2}
# 	docker run -d -it --name ${name} \
# 	-v ${vol1}:${mnt1} \
# 	-p ${pl1}:${pd1} \
# 	-p ${pl2}:${pd2} \
# 	${image} 

# bash:
# 	docker exec -it ${name} /bin/bash

# prepare:
# 	docker exec ${name} /bin/sh -c "/etc/hive-bootstrap.sh"

# connect:
# 	docker exec -it ${name} mongo

# stop:
# 	docker stop ${name}

# start:
# 	docker start ${name}

# restart: stop start

# delete:
# 	docker rm ${name}





