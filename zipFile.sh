if [ $# -lt 1 ]; then
    echo "usage : enter at least one argument"
    exit 1
fi
$a=$1

if [ -d $b ];then
    echo "Directory doesnt exist : we create it"
    mkdir -p "$b"
fi

shift 

for i in $*
    if [ -f $i ];then
        gzip -c $i > $b/$i.zip
    else
        echo "le fichier : "$i"n'existe pas on passe a la suite"
    fi
done

exit 
