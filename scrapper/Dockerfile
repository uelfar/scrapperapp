FROM alpine
COPY ./files/MyScrapper.sh /tmp/MyScrapper.sh
RUN mkdir /tmp/myres
RUN apk update && apk add wget jq&& rm -rf /var/cache/apk/* && chmod +x /tmp/MyScrapper.sh 
CMD /tmp/MyScrapper.sh 
