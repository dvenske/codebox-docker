FROM ubuntu:14.04
MAINTAINER deane@venske.net

WORKDIR /workspace
RUN apt-get update && \
	apt-get install -y make g++ python git curl && \
	curl -sL https://deb.nodesource.com/setup | sudo bash - && \
	apt-get install -y nodejs && \
	npm -g install node-gyp codebox && \
	cd /usr/lib/node_modules/codebox/node_modules/shux/node_modules/pty.js && \
	make clean && \
	make

ENV CODEBOX_USERNAME=win
ENV CODEBOX_PASSWORD=1g3pass

EXPOSE 80
ENTRYPOINT ["sh", "-c", "/usr/bin/codebox run -p 80 -u $CODEBOX_USERNAME:$CODEBOX_PASSWORD"]
