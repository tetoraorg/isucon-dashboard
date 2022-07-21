#!/bin/bash

echo "nginx benchmark"
for i in {1..1000}; do
  curl -s -o /dev/null http://localhost/
  curl -s -o /dev/null http://localhost/$i
  curl -s -o /dev/null -X POST http://localhost/post/$i
done
echo "nginx benchmark done"

echo "mysql benchmark"
docker exec -it client-mysql bash -c '
  for i in {1..1000}; do
    mysql -e "SELECT user FROM mysql.user LIMIT $i"
  done
' > /dev/null 2>&1
echo "mysql benchmark done"
