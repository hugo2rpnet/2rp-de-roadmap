#!/bin/bash

# Verifica se os argumentos foram fornecidos corretamente
if [ $# -ne 2 ]; then
  echo "Uso: $0 <diretorio> <texto>"
  exit 1
fi

diretorio="$1"
texto="$2"

# Importa as funções do arquivo funcoes.sh
source funcoes.sh

# Lista todos os arquivos do diretório e subdiretórios
arquivos=($(lista_arquivos "$diretorio"))

# Itera sobre os arquivos e insere o texto no final de cada um
for arquivo in "${arquivos[@]}"; do
  insere_texto "$arquivo" "$texto"
done

