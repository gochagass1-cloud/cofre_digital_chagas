#!/bin/bash
set -e

echo "Iniciando prática dos alunos..."
echo "Gerando arquivo de resultado..."

DATA=$(date +"%Y-%m-%d %H:%M:%S")

# echo "Prática executada com sucesso em: $DATA" > resultado-pratica.txt
echo "Prática executada com sucesso em: $DATA" > "$(dirname "$0")/resultado-pratica.txt"

echo "Arquivo resultado-pratica.txt gerado com sucesso."
