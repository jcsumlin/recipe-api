# Use the official Python base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the poetry.lock and pyproject.toml files to the container
COPY poetry.lock pyproject.toml ./

# Install Poetry
RUN pip install --no-cache-dir poetry

# Install project dependencies
RUN poetry config virtualenvs.create false && \
    poetry install --no-interaction --no-ansi

# Copy the application code to the container
COPY . .

# Expose the port that the Django application will run on
EXPOSE 8000

# Set the command to run the Django application
CMD ["poetry", "run", "python", "manage.py", "runserver", "0.0.0.0:8000"]