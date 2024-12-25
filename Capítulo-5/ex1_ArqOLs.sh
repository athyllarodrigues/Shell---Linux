if [ $# -ne 2 ]; then
    echo "Uso: $0 <identificador_escritorio> <arquivo_conteudo>"
    exit 1
fi

identificador="$1"
conteudo="$2"

grep "$identificador" ArqOLs | while read -r linha; do
    operador=$(echo "$linha" | cut -f3)
    echo "Enviando e-mail para $operador..."
    mail "$operador" < "$conteudo"
done
