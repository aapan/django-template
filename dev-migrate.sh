#!/bin/bash
export `cat ./project_name/.env`
docker exec -it $PROJECT_NAME bash -c "python manage.py makemigrations && python manage.py migrate --noinput"