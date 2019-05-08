# hive-mr-docker-deploy

deploy hive with map-reduce in docker

Change in docker-compose.yml the replicas of datanodes to scale. Need to create multiple docker servers and init the swarm.

On the docker swarm manager:

* To deploy/restart the hive service to multiple nodes:
        
        make deploy

* To display the services in the docker stack:

        make deploy-ps

* To delete the docker stack:

        make deploy-rm

* To test the services on local:

        make create
