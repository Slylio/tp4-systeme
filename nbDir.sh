#!/usr/bin/bash
IFS=$'\n'
compteur=0
if [ $# -lt 1 ]; then
    echo "usage : enter repository"
    exit 1
fi

if [ !-d $1 ];then
    echo "$1 n'est pas un réportoire " 
    exit 2
fi

for i in `ls -1 $1`
    do
        echo $i
        if [ -d $1/$i ]; then
            let compteur++
        fi
done
echo $compteur
exit
