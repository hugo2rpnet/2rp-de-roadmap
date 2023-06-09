#!/bin/bash

# Função para listar todos os arquivos dentro de um diretório e seus subdiretórios
lista_arquivos() {
  local diretorio="$1"
  local arquivos=()

  # Recursivamente encontra todos os arquivos e os armazena no vetor "arquivos"
  while IFS= read -r -d $'\0' arquivo; do
    arquivos+=("$arquivo")
  done < <(find "$diretorio" -type f -print0 | sort -z)

  # Retorna o vetor de arquivos
  echo "${arquivos[*]}"
}

# Função para inserir um texto no final de um arquivo
insere_texto() {
  local arquivo="$1"
  local texto="$2"

  # Adiciona o texto no final do arquivo
  echo "$texto" >> "$arquivo"
}
