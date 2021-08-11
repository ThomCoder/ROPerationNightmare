# Created from LiveOverflow's Dockerfile at https://github.com/LiveOverflow/pwnedit/blob/main/episode05/Makefile
.PHONY : all stop build run attach
all : clean build run attach

clean:
	-docker stop roperation
	sleep 1
	-docker rmi roperation

stop:
	-docker stop roperation

build:
	docker build -t roperation .

run:
	docker run --rm -v $(CURDIR):/home/user --cap-add=SYS_PTRACE --security-opt seccomp=unconfined -d --name roperation -i roperation

attach:
	docker exec -it roperation /bin/bash

binary:
	gcc -Wl,-z,norelro -fno-stack-protector -no-pie -O0 main.c -o vuln
