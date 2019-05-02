#!/usr/bin/bash
# © SatyaSys Tech Private Limited 
# Do not remove copyright information from this file
# If you find this script useful, please feel free to 
# to contact us via our website https://www.satyasys.com, if you need any IT services.
# We are working on Android, Java Spring boot, Blockchain, Web Designing, 
# Graphic Designing, Security Testing, Machine Learning, Data Analytics,
# IT Training, IT Support, etc.
if [ $# -ne 2 ]
then
        echo "./csv2sql.sh file tablename";
        exit -1;
fi
while read a; 
do 
question=`echo $a | cut -d "?" -f1`; 
answer=`echo $a | cut -d "?" -f2`; 
echo "insert into $2 values('$question','$answer')"; 
done <  $1 > $1.sql
