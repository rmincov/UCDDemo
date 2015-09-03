#!/bin/bash
echo "executando shell mincov"
date>> /mincov/shellresult.log
#su - db2inst1 -c "db2stop;"
su - db2inst1 -c "db2 drop database DBUCD;"
su - db2inst1 -c "db2 -tvf /mincov/ddl_db.txt"
date >> /mincov/shellresult.log
echo "final do script shellmincov" >> /mincov/shellresult.log
