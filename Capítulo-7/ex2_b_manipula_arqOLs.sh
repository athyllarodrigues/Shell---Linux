if [ $# -ne 1 ]; then
    echo "Uso: $0 <incluir|excluir|alterar>"
    exit 1
fi

operacao="$1"
arqols="ArqOLs"

case $operacao in
    incluir)
        read -p "Digite o identificador: " identificador
        read -p "Digite o nome do operador: " operador
        read -p "Digite o e-mail: " email
        novo_registro="$identificador    $operador    $email"
        echo "Novo registro: $novo_registro"
        read -p "Confirma inclusão? (s/n): " resposta
        if [ "$resposta" == "s" ]; then
            echo "$novo_registro" >> "$arqols"
            echo "Registro incluído com sucesso!"
        else
            echo "Inclusão cancelada."
        fi
        ;;
    excluir)
        read -p "Digite o identificador a excluir: " identificador
        grep -v "^$identificador" "$arqols" > temp && mv temp "$arqols"
        echo "Registro excluído com sucesso!"
        ;;
    alterar)
        read -p "Digite o identificador a alterar: " identificador
        grep "^$identificador" "$arqols" || { echo "Registro não encontrado!"; exit 1; }
        read -p "Digite o novo nome do operador: " novo_operador
        read -p "Digite o novo e-mail: " novo_email
        sed -i "s/^$identificador.*/$identificador    $novo_operador    $novo_email/" "$arqols"
        echo "Registro alterado com sucesso!"
        ;;
    *)
        echo "Operação inválida!"
        exit 1
        ;;
esac
