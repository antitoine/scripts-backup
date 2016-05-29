#!/bin/sh
# Permet de faire un backup d'un site et sa base de donnée 

DATE=$(date +"%Y%m%d%H%M")
NAME=<app name>
RESULTPATH=/path/to/backup/folder
SOURCEPATH=/path/to/website/source
DBUSER=<database username>
DBNAME=<database name>
DBPSSWD=<database password>

mysqldump -u$DBUSER -p$DBPSSWD -r$RESULTPATH/backup_db_$NAME\_$DATE.sql $DBNAME
tar -zcvf $RESULTPATH/backup_dd_$NAME\_$DATE.tar.gz $SOURCEPATH
