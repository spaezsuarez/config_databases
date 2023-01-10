#!/bin/zsh
clear

option=$1
database=$2

cd $database

if [ $option = "start" ] 
then
    export DATABASE_PASS=pass
    export DATABASE_USER=system
    export DATABASE_NAME=$3

    docker stack deploy -c docker-stack.yml $database
    docker service ls

elif [ $option = "stop" ]
then
    process_id=$(docker service ls | grep -i $database | cut -d' ' -f 1)
    echo "process_id $process_id"
    docker service rm $process_id
    docker service ls
else 
    echo "Ingrese una opcion valida (start | stop)"
fi




