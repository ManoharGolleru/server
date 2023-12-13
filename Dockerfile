# Start from the official Python base image
FROM python:3.8

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory's contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run the application. App Engine will set the $PORT environment variable to tell you what port to listen on.
CMD ["uvicorn", "Fin3:app", "--host", "0.0.0.0", "--port", "$PORT"]

