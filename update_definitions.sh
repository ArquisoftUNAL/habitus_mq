#!/bin/bash
sed -i 's~admin_password_hash~'$ADMIN_PASSWORD_HASH'~g' /etc/rabbitmq/definitions.json
sed -i 's~w_notifications_password_hash~'$W_NOTIFICATIONS_PASSWORD_HASH'~g' /etc/rabbitmq/definitions.json
sed -i 's~r_notifications_password_hash~'$R_NOTIFICATIONS_PASSWORD_HASH'~g' /etc/rabbitmq/definitions.json
sed -i 's~w_new_habit_data_password_hash~'$W_NEW_HABIT_DATA_PASSWORD_HASH'~g' /etc/rabbitmq/definitions.json
sed -i 's~r_new_habit_data_password_hash~'$R_NEW_HABIT_DATA_PASSWORD_HASH'~g' /etc/rabbitmq/definitions.json
echo "Updated definitions.json"
