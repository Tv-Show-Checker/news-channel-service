#!/bin/bash

echo "Make Migrations"
python manage.py makemigrations
echo "Apply database migration"
python manage.py migrate

exec "$@"