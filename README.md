# Recipe API

This is just the backend, there is no frontend for this project. 

[Udemy Course](https://alteryx.udemy.com/course/django-python-advanced/learn/lecture/32238662#overview)

## Technologies Used
 - Django
 - Django Rest Framework
 - Python
 - PostgresSQL
 - Docker
 - Swagger
 - Github Actions


## Project Structure

- `app/` - Django project folder
- `app/core/` - Code shared between multiple apps
- `app/user` - User related code
- `app/recipe` - Recipe Related code

## Test Driven Development

### Unit tests
Code which tests code in your application.
- Sets up conditions/ inputs
- Runs a piece of code
- Checks the output with assertions

Reasons for unit tests:
- Ensures the code runs as expected
- Catches bugs
- Improves reliability
- Provides confidence

TDD Process
 - Write test
 - Run test and see it fail
 - Write code to pass test


## Linting and Testing

Flake8 is a tool that checks for PEP8 compliance and other linting issues.
Tell flake8 to ignore .venv and migrations folder by creating a .flake8 file in the root of the project.

- `docker-compose run --rm app sh -c "flake8"`
