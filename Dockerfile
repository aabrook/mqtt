from ncarlier/mqtt

ENV MOSQUITTO_HOME /etc/mosquitto

COPY ./mosquitto.conf $MOSQUITTO_HOME

VOLUME ["/etc/mosquitto/conf.d"]
ENTRYPOINT ["mosquitto", "-c", "/etc/mosquitto/mosquitto.conf"]

