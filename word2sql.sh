#!/usr/bin/bash
# © SatyaSys Tech Private Limited 
# Do not remove copyright information from this file
# If you find this script useful, please feel free to 
# to contact us via our website https://www.satyasys.com, if you need any IT services.
# We are working on Android, Java Spring boot, Blockchain, Web Designing, 
# Graphic Designing, Security Testing, Machine Learning, Data Analytics,
# IT Training, IT Support, etc.
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
