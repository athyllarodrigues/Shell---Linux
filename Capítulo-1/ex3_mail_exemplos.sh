echo "Texto da correspondência" | mail proara < mala

mail proara <<EOF
Texto redigido diretamente no corpo do email.
EOF

echo "Conteúdo $1 $2" | mail proara
