# Rotação de IP usando Mullvad VPN

Este projeto visa realizar a rotação de endereços IP utilizando os países e cidades disponíveis na Mullvad VPN. O processo de rotação é automatizado para ocorrer a cada 30 segundos, por padrão.

## Como funciona

1. O script executa o comando `mullvad relay list` para obter a lista de relays disponíveis na Mullvad VPN.
2. A saída do comando é redirecionada para o arquivo `output.txt`.
3. O script processa cada linha do arquivo `output.txt` para identificar e processar os hostnames dos relays que possuem o formato adequado.
5. O comando `curl ifconfig.me` é executado para exibir o novo endereço IP.
6. O processo se repete a cada 30 segundos.

## Uso

1. Instale a Mullvad VPN e sua interface de linha de comando, conforme indicado na [documentação da Mullvad](https://mullvad.net/pt/help/how-use-mullvad-cli/).
```
git clone https://github.com/benzetaa/mullvad-auto-relay
chmod +x mullvad-auto-relay.sh
./mullvad-auto-relay.sh
```

## Observações

Certifique-se de ler e entender a [documentação oficial da Mullvad](https://mullvad.net/pt/help/how-use-mullvad-cli/) antes de usar este projeto. A rotação de IP pode ter implicações legais e éticas, portanto, use este projeto com responsabilidade.

Este projeto foi criado para fins educacionais e não possui afiliação com a Mullvad VPN.