nbNombres=0
somme=0
moy=0
if [ $# -lt 1 ];then
    echo "usage : enter numbers"
    exit 1
fi

for i in `cat $1`
    do
        if [ $i -eq $i ]; then
              let somme+=i
              let nbNombres++	
        fi
done
let moy=somme/nbNombres
echo $moy
exit
