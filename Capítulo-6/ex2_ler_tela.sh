read -p "Nome da Máquina: " maquina
read -p "Login Name: " login
read -sp "Senha: " senha
echo
read -p "Arquivos para transmitir (separe por espaço): " arquivos

for arquivo in $arquivos; do
    echo "Transferring $arquivo to $maquina..."
    ftp -n <<END_SCRIPT
open $maquina
user $login $senha
put $arquivo
bye
END_SCRIPT
done
