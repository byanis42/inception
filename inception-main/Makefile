build:
	docker-compose -f srcs/docker-compose.yml up --build

rebuild:
	docker-compose -f srcs/docker-compose.yml down -v; \
	rm -rf /home/tcazenav/data/wordpress; \
	rm -rf /home/tcazenav/data/mariadb; \
	mkdir /home/tcazenav/data/wordpress; \
	mkdir /home/tcazenav/data/mariadb; \
	docker system prune -af --volumes; \
	docker-compose -f srcs/docker-compose.yml up --build \

clean:
	docker-compose -f srcs/docker-compose.yml down -v; \
	rm -rf /home/tcazenav/data/wordpress; \
	rm -rf /home/tcazenav/data/mariadb; \
	mkdir /home/tcazenav/data/wordpress; \
	mkdir /home/tcazenav/data/mariadb; \
	docker system prune -af --volumes \
