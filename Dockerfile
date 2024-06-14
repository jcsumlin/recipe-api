# Use the official Python base image
FROM python:3.10-slim-bullseye
LABEL maintainer="chat"

ENV PYTHONUNBUFFERED=1 \
    POETRY_VIRTUALENVS_CREATE=false

# Set the working directory in the container
WORKDIR /app

RUN apt-get update && apt-get install -y curl

# Install Poetry
RUN pip install poetry>=1.9
# Copy the poetry.lock and pyproject.toml files to the container
COPY poetry.lock pyproject.toml ./
# Install project dependencies
RUN poetry install --no-interaction --no-ansi && \
    rm -rf /tmp
# Copy the application code to the container
COPY . .

# Expose the port that the Django application will run on
EXPOSE 8000

# Set the command to run the Django application
CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]