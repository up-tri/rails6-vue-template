#!/bin/sh

echo "CREATE DATABASE IF NOT EXISTS \`another_development\` ;" | "${mysql[@]}"
echo "GRANT ALL ON *.* TO '"$MYSQL_USER"'@'%' ;" | "${mysql[@]}"
echo 'FLUSH PRIVILEGES ;' | "${mysql[@]}"

if [ -e /docker-entrypoint-initdb.d/another_development.sql_ ]; then
  mysql -u for2_development -pfor2_development -D another_development < /docker-entrypoint-initdb.d/another_development.sql_
fi
