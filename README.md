INSTALLATION
============

Clone repo to a folder of your discretion.

Create a symlink to a folder on your path (run `echo $PATH` in terminal to find out what folders you have in your path). I.E. `ln -s django_shorts/shorthands.sh dja`


USAGE
-----
* `dja -m AppName` or `dja -m AppName` creates schemamigration --auto for app "AppName", and applies migration to db