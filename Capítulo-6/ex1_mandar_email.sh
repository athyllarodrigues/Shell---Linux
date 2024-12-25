while read -r linha; do
    operador=$(echo "$linha" | cut -f3)
    echo "Enviando e-mail para $operador..."
    mail "$operador" < mensagem.txt
done < ArqOLs
