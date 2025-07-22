# 🚀 Desafio Full Cycle - Docker + Go
Imagem enxuta com menos de 2MB criada para o curso Full Cycle. O objetivo é publicar uma imagem no Docker Hub que, ao ser executada, imprime a mensagem: "Full Cycle Rocks!!"

## Imagem no Docker Hub
https://hub.docker.com/r/alineassuncao/fullcycle

## Clone da imagem
docker pull alineassuncao/fullcycle

## Como usar
docker run alineassuncao/fullcycle

## Saída esperada
Full Cycle Rocks!!

## Tecnologias utilizadas
- Go — linguagem compilada e eficiente
- Docker — containerização e publicação de imagens
- scratch como imagem raiz para garantir tamanho mínimo

## Estratégia de construção
- Compilação com -ldflags="-s -w" para gerar binário mais leve
- Multi-stage build separando compilação da imagem final
- Tamanho final da imagem: ~1.8MB ✅

