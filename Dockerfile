FROM rabbitmq:3-management

# Parse endline characters correctly
RUN apt-get update && apt-get install -y dos2unix

WORKDIR /etc/rabbitmq/

COPY rabbitmq.conf .
RUN dos2unix rabbitmq.conf
COPY definitions.json .
RUN dos2unix definitions.json
COPY update_definitions.sh .
RUN dos2unix update_definitions.sh

RUN chmod +x update_definitions.sh
RUN chown rabbitmq:rabbitmq rabbitmq.conf definitions.json

EXPOSE 5672
EXPOSE 15672

CMD ["sh", "update_definitions.sh"]
CMD ["rabbitmq-server"]