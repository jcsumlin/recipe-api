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
 - write test
 - run test and see it fail
 - write code to pass test