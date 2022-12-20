#!/usr/bin/bash

source ./db_root_path.sh
ls $DB_PATH/*/ >/dev/null 2>&1

if [ $? == 0 ]; then
       list=$(ls -d $DB_PATH/*/ | cut -f3 -d '/')
       for dbname in "$list"; do
              echo '+---------------------------------+'
              echo "$dbname"
              echo '+---------------------------------+'
       done

else
       echo '+---------------------------------+'
       echo "NO DataBases created yet!"
       echo '+---------------------------------+'
fi
