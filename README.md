# Projeto final da trilha de Engenharia de Dados da Semantix

## Pré Requisitos

Garanta que a variável `vm.max_map_count` em `/etc/sysctl.conf` esteja igual a `262144` para o bom funcionamento do Elastic.
```bash
sudo sysctl -w vm.max_map_count=262144
```

## Como executar o projeto
Na raiz do projeto, inicie os serviços com o docker compose:
```bash
docker-compose up -d
```

**Na primeira vez que instanciar os serviços**, execute o script de preparação do ambiente:
```bash
sh prepare-environment.sh
```

Para parar os serviços, utilize:
```bash
docker-compose stop
```

Este repositório é um fork de [rodrigo-reboucas](https://github.com/rodrigo-reboucas/docker-bigdata)
