APP = srv-proxy
STACK_CONF = docker-stack.yml

# Swarm

stack-deploy:
	docker stack deploy -c ${STACK_CONF} --with-registry-auth ${APP}

stack-rm:
	docker stack rm ${APP}

service-logs:
	docker service logs ${APP}_web -f
