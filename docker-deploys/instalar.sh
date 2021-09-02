#!/bin/sh
clear
echo
cat readme.md
echo
while true; do
    echo
    echo -e "Instalar Docker MySql Security ? (s/n)"
    read sn
    case $sn in
        [Nn]* ) exit;;
        [Ss]* ) echo "###################### INICIANDO STACK ######################" ;
            echo "" ;
            sleep 1 ;
            cd centos7 ;
            docker-compose down ;
            sleep 1 ;
            docker-compose up -d --build ;
	    sleep 1 ;
	    docker container rm -f c7-default;
            break;;
        * ) echo "Preencher S ou N.";;
    esac
done

