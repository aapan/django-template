#!/bin/bash
export `cat ./project_name/.env`
echo "$@";
docker exec -it $PROJECT_NAME bash -c "python manage.py `echo "$@"`"