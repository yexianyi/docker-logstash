FROM logstash:latest

RUN logstash-plugin install logstash-input-tcp

COPY logstash.conf /some/config-dir/

CMD ["-f", "/some/config-dir/logstash.conf"]
