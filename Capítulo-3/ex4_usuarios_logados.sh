who | awk '{print $1, $3, $4}' | while read usuario data hora; do
    login=$(date -d "$data $hora" +%s)
    um_dia=$(date -d "1 day ago" +%s)
    if [ $login -lt $um_dia ]; then
        echo "$usuario logado desde $data $hora"
    fi
done
