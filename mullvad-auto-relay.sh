#!/bin/bash

# Executa o comando e redireciona a saída para o arquivo output.txt
mullvad relay list > output.txt

# Lê o arquivo de saída e processa os hostnames
while IFS= read -r line; do
    words=($line)
    if [[ ${#words[@]} -gt 0 && ${#words[0]} -gt 0 && $(grep -o "-" <<< "${words[0]}" | wc -l) -ge 1 ]]; then
        hostname="${words[0]}"
        echo "Processando hostname: $hostname"
        mullvad relay set hostname "$hostname"
        curl ifconfig.me
        echo ""
        sleep 30
    fi
done < "output.txt"
