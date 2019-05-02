if [ $# -ne 3 ]
then
        echo "./word2sql.sh file linepatten tablename";
        exit -1;
fi
while read a;
do if [[ $a =~ $2 ]];
then read b;
echo "insert into $3 values('$b',";
read c;
printf "'";
while true;
do read d;
if [[ $d =~ $2 ]];
then break;
fi;
if [[ -z $d ]];
then break;
fi;
printf "%s " $d;
done;
echo "');";
fi;
done < $1 > $1.sql
