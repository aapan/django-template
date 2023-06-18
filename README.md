# Django Project Template

This repository provides a template for building Django projects with additional features such as Django REST Framework, Swagger documentation, MariaDB, Redis, and Nginx.

## Table of Contents

- [Features](#features)
- [Getting Started](#getting-started)
- [References](#references)

## Features

- Django framework with a customizable project structure
- Django REST Framework for building APIs
- Swagger documentation for API documentation and testing
- MariaDB integration for the database layer
- Redis integration for caching and other Redis-based functionalities
- Nginx configuration for serving static files and improving performance

## Getting Started

To use this project template, follow the steps below:

1. Clone this repository to your local machine:

```shell
git clone https://github.com/aapan/django-template.git
```
2. Copy this repository for creating your project:

```shell
cp -r ./django-template ./<your_project_name>
cd <your_project_name>
```

(Optional) If you want to start your project with a fresh Git repository, you can remove the existing .git directory and initialize a new Git repository:

```shell
rm -rf .git && git init
```

This step is optional and can be skipped if you prefer to keep the existing Git history of the template repository. It allows you to have a clean Git repository specifically for your project.


3. Change all file and directory names to customize your project name. Run the following commands, replacing <your_project_name> with your desired project name:

```shell
find /path/to/folder -type f \( -name "*.py" -o -name "*.yml" -o -name "*.sh" -o -name "*.ini" -o -name "*.conf" \) -exec sed -i '' 's/project_name/<your_proejct_name>/g' {} \;

find /path/to/folder -type d -name "project_name" -execdir mv {} "<your_proejct_name>" \;
```

4. Copy the .env.example file to .env and configure your project's settings:

```shell
cp .env.example .env

vim .env
```

In the .env file, update the values according to your project's requirements.


(Optional) If you are using Apple M1 or iOS with the Apple M2 chip, you may need to modify the mariadb image version in the docker-compose-local.yml file. Comment out the existing image line and uncomment the image line for the appropriate version for your architecture:

```yaml
mariadb:
    # image: mariadb:latest
    image: arm64v8/mariadb:latest
```

Choose the appropriate image version based on your architecture, either mariadb:latest or arm64v8/mariadb:latest.


6. Start the development environment using Docker Compose:

```shell
docker-compose -f docker-compose-local.yml up -d
```

This will spin up the necessary containers for your Django project, including MariaDB, Redis, and Nginx.

You can access your Django project at http://localhost:8000/ in your browser.

<br>

### Now is the time to dive into your Django project and bring your ideas to life. Enjoy coding!

<br>

## References

1. Django framework with a customizable project structure:

    Official Django documentation: https://docs.djangoproject.com/

2. Django REST Framework for building APIs:

    Django REST Framework documentation: https://www.django-rest-framework.org/

3. Swagger documentation for API documentation and testing:

    Swagger UI documentation: https://swagger.io/tools/swagger-ui/
    
    Django REST Swagger package: https://github.com/axnsan12/drf-yasg

6. Nginx configuration for serving static files and improving performance:

    Nginx official website: https://nginx.org/

    Nginx documentation: https://nginx.org/en/docs/

These references provide detailed information, documentation, and resources for each feature, enabling you to explore and leverage their functionalities effectively in your Django project.


