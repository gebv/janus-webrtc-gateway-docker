TEMPLATE_NAME ?= janus-webrtc-gateway-docker

build:
	@docker build -t atyenoria/$(TEMPLATE_NAME) .

build-nocache:
	@docker build --no-cache -t atyenoria/$(TEMPLATE_NAME) .

bash:
	@docker run --net=host -v /home/ubuntu:/ubuntu --name="janus" -it -t atyenoria/$(TEMPLATE_NAME) /bin/bash

attach:
	@docker exec -it janus /bin/bash

run:
	@docker run --net=host --name="janus" -it -t atyenoria/$(TEMPLATE_NAME)

run-mac:
	@docker run \
		-p 127.0.0.1:10080:80 \
		-p 127.0.0.1:7088:7088 \
		-p 127.0.0.1:8088:8088 \
		-p 127.0.0.1:8188:8188 \
		-p 127.0.0.1:8189:8189 \
		--name="janus" \
		-v ${PWD}/janus:/usr/local/etc/janus \
		-v ${PWD}/lua:/opt/share/janus/lua \
		-it \
		-d \
		-t \
		atyenoria/$(TEMPLATE_NAME)

run-hide:
	@docker run --net=host --name="janus" -it -t atyenoria/$(TEMPLATE_NAME) >> /dev/null
