INSTALLATION
------------

Clone repo to a folder of your discretion.

Create a symlink to a folder on your path (run `echo $PATH` in terminal to find out what folders you have in your path). I.E. `ln -s django_shorts/shorthands.sh dja`


USAGE
-----
`dja command [AppName]` or `dja -c [AppName]` creates schemamigration --auto for app "AppName", and applies migration to db


COMMANDS
--------
`migrate` or `-m` -- needs appname as argument

    python manage.py schemamigration APP_NAME --auto
    python manage.py migrate APP_NAME

***

`runserver` or `-s`

    python manage.py runserver

***

`runserver-out` or `-so`

    python manage.py runserver 0.0.0.0:8000

***

`superuser` or `-su`

    python manage.py createsuperuser