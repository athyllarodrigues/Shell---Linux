
MAXFILES=${MAXFILES:-10}
num_files=$#

if [ $num_files -eq 0 ]; then
    echo "Nenhum arquivo foi especificado."
    exit 1
fi


if [ $num_files -gt $MAXFILES ]; then
    echo "Removo $num_files arquivos? (s/n)"
    read resposta
    if [ "$resposta" != "s" ]; then
        echo "Os arquivos não foram removidos."
        exit 0
    fi
fi


rm "$@"

echo "Arquivos removidos com sucesso!"
