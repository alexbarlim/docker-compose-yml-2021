# docker-compose.yml (2021)

## Crie o grupo Docker
```sh
sudo groupadd docker
```

## Se adicione ao grupo
```sh
sudo usermod -aG docker $USER
```

## Reinicie e veja se está dentro do grupo
```sh
id
```

## Crie uma pasta em ~/docker
```sh
mkdir ~/docker
```

## Instale o Docker junto com o Docker-Compose
```sh
sudo apt-get install docker.io docker-compose
```

## Teste se funciona sem sudo
```sh
docker run hello-world
```


## Na pasta do docker-compose.yml rode o comando para baixar as imagens, criar os containers e deixar online
```sh
docker-compose up -d
```

### Para parar os containers
```sh
docker-compose stop
```

### Para iniciar os containers
```sh
docker-compose up
```

### Para fazer o update de todas as imagens
```sh
docker-compose pull
```

### Listar todas as imagens
```sh
docker image list
```

### Listar todos os containers (e os desligados)
```sh
docker container list -a
```

### Remove todos os container sem as imagens baixadas
```sh
docker-compose down --remove-orphans
```

## Para desinstalar e remover as pastas com as configurações, containers e imagens
```sh
sudo apt-get purge docker.io docker-compose
```
```sh
sudo rm -rf /var/lib/docker
```
```sh
sudo rm -rf /var/lib/containerd
```

## Scrutiny
Para fazer o diagnóstico pela primeira vez, rode o comando:
```sh
docker exec -it --user root scrutiny scrutiny-collector-metrics run
```
O comando rodará outro comando dentro do container. Ele serve como base para outros propósitos.
