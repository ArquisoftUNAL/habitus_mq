FROM rabbitmq:3-management
ADD rabbitmq.config /etc/rabbitmq/
ADD definitions.json /etc/rabbitmq/
ADD update_definitions.sh /etc/rabbitmq/
RUN chmod +x /etc/rabbitmq/update_definitions.sh
RUN /etc/rabbitmq/update_definitions.sh
RUN chown rabbitmq:rabbitmq /etc/rabbitmq/rabbitmq.config /etc/rabbitmq/definitions.json
