#!/bin/bash
# Script para iniciar e parar os serviços de DNS e Web

SERVICE=$1
ACTION=$2

if [[ $SERVICE == "dns" ]]; then
    if [[ $ACTION == "start" ]]; then
        docker build -t meu-dns ./dns
        docker run -d --name meu-dns-container -p 53:53/udp -p 53:53/tcp meu-dns
    elif [[ $ACTION == "stop" ]]; then
        docker stop meu-dns-container && docker rm meu-dns-container
    fi
elif [[ $SERVICE == "web" ]]; then
    if [[ $ACTION == "start" ]]; then
        docker build -t meu-web ./web
        docker run -d --name meu-web-container -p 8080:80 meu-web
    elif [[ $ACTION == "stop" ]]; then
        docker stop meu-web-container && docker rm meu-web-container
    fi
else
    echo "Uso: ./service.sh <dns|web> <start|stop>"
fi
