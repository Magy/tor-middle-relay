FROM alpine:latest

RUN apk --no-cache add \
	bash \
	tor

EXPOSE 9001

# copy in our torrc files
COPY torrc.middle /etc/tor/torrc.middle


# copy the run script
COPY run.sh /run.sh
RUN chmod ugo+rx /run.sh

# default environment variables
ENV RELAY_NICKNAME hackdc
ENV RELAY_TYPE middle
ENV RELAY_BANDWIDTH_RATE 1000 KBytes
ENV RELAY_BANDWIDTH_BURST 1000 KBytes
ENV RELAY_PORT 9001

# make sure files are owned by tor user
RUN chown -R tor /etc/tor

USER tor

RUN mkdir /var/lib/tor/.tor
VOLUME /var/lib/tor/.tor
RUN chown -R tor /var/lib/tor/.tor

ENTRYPOINT [ "/run.sh" ]
