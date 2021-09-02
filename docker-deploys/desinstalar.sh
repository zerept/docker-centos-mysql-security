#!/bin/sh
clear
echo
cat readme.md
echo
while true; do
    echo
    echo -e "Desinstalar Docker MySql Security ? (s/n)"
    read sn
    case $sn in
        [Nn]* ) exit;;
        [Ss]* ) echo "###################### DESINSTALAR STACK ######################" ;
            echo "" ;
            sleep 1 ;
            cd centos7 ;
            docker-compose down ;
            sleep 1 ;
            break;;
        * ) echo "Preencher S ou N.";;
    esac
done

