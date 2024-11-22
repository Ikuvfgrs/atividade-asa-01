# Projeto ASA - Servidor DNS e Web com Docker

Este projeto cria um servidor DNS e um servidor Web integrados em containers Docker.

## Estrutura

- **dns**: Arquivos do servidor DNS (BIND9).
- **web**: Arquivos do servidor Web (Nginx).
- **service.sh**: Script para iniciar e parar os containers de DNS e Web.

## Como usar

Para iniciar o servidor DNS ou Web:

```bash
./service.sh dns start
./service.sh web start
