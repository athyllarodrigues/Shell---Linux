echo "Quequeisso" > quequeisso

sed 's#UNIX#unix#' quequeisso
sed '1,2s/[A-Z]//' quequeisso
sed '1,2s/[A-Z]//g' quequeisso
sed 's/ .*//' quequeisso
sed -n '/UNIX/p' quequeisso
sed '/UNIX/d' quequeisso
cat quequeisso | sed 's/ .*/ /'

expr 15 / 2 \* 5
expr 15 \* 5 / 2

finger | cut -c10-30 | cut -f1 -d" " | tr "[a-z]" "[A-Z]"

egrep '^(P|S)' quequeisso
egrep '^.(E|C)' quequeisso
egrep -v '^(E|C)' quequeisso | wc -l
fgrep -l ou *
grep ecardoso /etc/passwd | tr : -
expr length "C qui sabe"
