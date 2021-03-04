# docker-compose.yml (2021)

## Instale o Docker junto com o Docker-Compose
```sh
sudo apt-get docker.io docker-compose
```

## Crie o grupo Docker
```sh
sudo groupadd docker
```

## Se adicione ao grupo
```sh
sudo usermod -aG docker $USER
```

## Veja se está dentro do grupo
```sh
id
```

## Reinicie e siga
```sh
su -s ${USER}
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