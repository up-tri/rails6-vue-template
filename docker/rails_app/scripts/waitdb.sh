#!/bin/bash

until mysqladmin ping --host=mysql_db --port=3306 --user=app_development --password=app_development --silent; do
    echo 'waiting for mysqld to be connectable...'
    sleep 3
done
