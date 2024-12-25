echo "Escolha uma opção:"
echo "1. Inclusão em ArqOLs"
echo "2. Exclusão de ArqOLs"
echo "3. Alteração em ArqOLs"
read -p "Digite o número da opção: " opcao

case $opcao in
    1)
        ./manipula_arqols "incluir"
        ;;
    2)
        ./manipula_arqols "excluir"
        ;;
    3)
        ./manipula_arqols "alterar"
        ;;
    *)
        echo "Opção inválida!"
        exit 1
        ;;
esac
