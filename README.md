# Docker Redis Cluster
This configuration is about Redis Cluster. The following implementation
creates a cluster with 3 master and 0 replicas.

### Optional
If you want to change it just create a Redis block in dokcer-compose.yml
file and edit the `docker-data/docker-entrypoint.sh` file, the line
`echo "yes" | redis-cli --cluster create 173.17.0.2:7000 173.17.0.3:7001 173.17.0.4:7002 --cluster-replicas 0`
add 3 more IPs to the end and change the --cluster-replicas 0 to 1.

### Production
If you want to use this on production is define for each Redis container to
run in static machine.

### How To Start
1. Download the project `$ git clone http://github.com/olambdao/docker-compose-redis-cluster`
2. `cd docker-compose-redis-cluster`
3. `docker-compose build`
4. `docker-compose up` or `docker-compose up -d`
