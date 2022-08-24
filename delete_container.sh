NODEAPP_NAME=nodeapp
MYSQL_NAME=mysql
 
RUNNING=$(docker inspect --format="{{ .State.Running }}" $NODEAPP_NAME 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "'$NODEAPP_NAME' does not exist."
else
  docker rm --force $NODEAPP_NAME
fi

RUNNING=$(docker inspect --format="{{ .State.Running }}" $MYSQL_NAME 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "'$MYSQL_NAME' does not exist."
else
  docker rm --force $MYSQL_NAME
fi