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
elif [ $1 == 'runserver' ] || [ $1 == '-s' ]
  then
    echo "================================================"
    echo "Starting server..."
    echo "================================================"
    python manage.py runserver
elif [ $1 == 'runserver-out' ] || [ $1 == '-so' ]
  then
    echo "================================================"
    echo "Starting server..."
    echo "================================================"
    python manage.py runserver
elif [ $1 == 'test' ] || [ $1 == '-t' ]
  then
    echo "================================================"
    echo "Running test suite $2..."
    echo "================================================"
    python manage.py test $2
elif [ $1 == 'superuser' ] || [ $1 == '-su' ]
  then
    echo "================================================"
    echo "Creating SuperUser"
    echo "================================================"
    python manage.py createsuperuser
fi
