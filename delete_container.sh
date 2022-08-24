CONTAINER_NAME=nodeappcontainer
 
RUNNING=$(docker inspect --format="{{ .State.Running }}" $CONTAINER_NAME 2> /dev/null)

if [ $? -eq 1 ]; then
  echo "'$CONTAINER_NAME' does not exist."
else
  docker rm --force $CONTAINER_NAME
fi
