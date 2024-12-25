if [ $# -ne 2 ]; then
    echo "Uso: $0 <comando_sed> <arquivo>"
    exit 1
fi

comando="$1"
arquivo="$2"
temp_file=$(mktemp)

sed "$comando" "$arquivo" > "$temp_file"

if [ $? -eq 0 ]; then
    mv "$temp_file" "$arquivo"
    echo "Alteração realizada com sucesso!"
else
    echo "Erro ao executar o comando sed."
    rm -f "$temp_file"
fi
