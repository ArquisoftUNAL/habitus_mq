#!/bin/bash
sed -i 's/your_admin_password_hash/'"$ADMIN_PASSWORD_HASH"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_admin_salt/'"$ADMIN_SALT"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q1s_password_hash/'"$Q1S_PASSWORD_HASH"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q1s_salt/'"$Q1S_SALT"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q1l_password_hash/'"$Q1L_PASSWORD_HASH"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q1l_salt/'"$Q1L_SALT"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q2s_password_hash/'"$Q2S_PASSWORD_HASH"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q2s_salt/'"$Q2S_SALT"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q2l_password_hash/'"$Q2L_PASSWORD_HASH"'/g' /etc/rabbitmq/definitions.json
sed -i 's/your_q2l_salt/'"$Q2L_SALT"'/g' /etc/rabbitmq/definitions.json
