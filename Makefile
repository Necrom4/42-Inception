all: up

up:
	@docker-compose -f ./srcs/docker-compose.yml up -d

down:
	@docker-compose -f ./srcs/docker-compose.yml down -v

stop:
	@docker-compose -f ./srcs/docker-compose.yml stop

start:
	@docker-compose -f ./srcs/docker-compose.yml start

status:
	@docker ps

kill:
	@docker system prune -af

clean:
	@docker-compose -f ./srcs/docker-compose.yml down -v
	@docker system prune -af

fclean:
	@docker-compose -f ./srcs/docker-compose.yml down -v
	@docker system prune -af
	@rm -rf /home/diogo/data/wordpress/*
	@rm -rf /home/diogo/data/mariadb/*

restart:
	@docker-compose -f ./srcs/docker-compose.yml down -v
	@docker system prune -af
	@docker-compose -f ./srcs/docker-compose.yml up -d
