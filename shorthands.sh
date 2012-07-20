#!/bin/bash

# 2012 by jnaO
#
# Intension is to help you, not to harm you.
#
# That said, permission is hereby granted, free of charge and so on...
# Use as you please. If you break something using tis program, or
# if anyone else breaks something for you because of this program
# don't blame me.
#
# Source is found @ https://github.com/jnaO/my_django_shorthands
#

if [ $1 == 'migrate' ] || [ $1 == '-m' ]
  then
    echo "================================================"
    echo "Creating schema migration for "$2
    echo "================================================"
    python manage.py schemamigration $2 --auto
    echo "================================================"
    echo "Migrating "$2
    echo "================================================"
    python manage.py migrate $2
elif [ $1 == 'runserver' ] || [ $1 == '-rs' ]
  then
    echo "================================================"
    echo "Starting server for "$2
    echo "================================================"
    python manage.py runserver
fi
