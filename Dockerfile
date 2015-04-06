FROM dockerfile/elasticsearch

ADD config/elasticsearch.yml /elasticsearch/config/

#Install plugins
RUN /elasticsearch/bin/plugin -install lmenezes/elasticsearch-kopf
RUN /elasticsearch/bin/plugin -install elasticsearch/elasticsearch-cloud-aws/2.3.0
RUN /elasticsearch/bin/plugin -install mobz/elasticsearch-head
RUN /elasticsearch/bin/plugin -install karmi/elasticsearch-paramedic
RUN /elasticsearch/bin/plugin -install lukas-vlcek/bigdesk

