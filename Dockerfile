FROM alpine:3.7

RUN apk --no-cache add curl

ADD *.sh /
RUN chmod +x /*.sh

ENTRYPOINT ["/start.sh"]
CMD [""]
