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


## Django Test Framework

- based on the unittest library
- Django adds features
  - Test client
  - Test database
  - simulate authentication
- Run tests with `docker-compose run --rm app sh -c "python manage.py test"`
  - Run tests with coverage `docker-compose run --rm app sh -c "coverage run manage.py test && coverage report"`
  - Run tests with coverage and html report `docker-compose run --rm app sh -c "coverage run manage.py test && coverage html"`
- Where do tests go?
  - Placeholder `tests.py` files are added to each app
  - or create `tests/`
  - Keep in mind that you can only use one or the other not both
  - test modules must start with `test_`
  - test directories must include `__init__.py`
- Writing Test cases
    - Import test class
      - SimpleTestCase - no database
        - Useful if no database is required for the test
        - Saves time when executing tests
      - TestCase - uses database
        - Used in most cases
    - Import objects to test
### Example:
```python
from django.test import TestCase
from app_two import views
class ViewsTest(TestCase):
    def test_create_user(self):
        """Test making a list of unique"""
        sample_items = [1, 2, 3, 3, 4, 5, 5]
        res = views.remove_duplicates(sample_items)
        self.assertEqual(res, [1, 2, 3, 4, 5])
```