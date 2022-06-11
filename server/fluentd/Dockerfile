FROM fluent/fluentd:v1.14-debian-1

USER root

RUN usermod -G root fluent

RUN gem install elasticsearch -v 7.13
RUN gem install fluent-plugin-elasticsearch

USER fluent

CMD ["fluentd", "-c", "/fluentd/etc/fluent_receiver.conf", "-p", "/fluentd/plugins"]
