FROM fluent/fluentd:latest


RUN gem install fluent-plugin-rewrite-tag-filter

COPY test.conf /home/fluent/test.conf

CMD ["fluentd", "-c", "/home/fluent/test.conf"]
