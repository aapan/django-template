#!/bin/bash
export `cat ./project_name/.env`
docker exec -it $PROJECT_NAME bash