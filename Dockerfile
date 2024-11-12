# Use official Python image from the Docker Hub
FROM python:3.8-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . /app/

# Expose the port the app will run on (Flask default is 5000)
EXPOSE 5000

# Set environment variables (optional)
ENV FLASK_APP=Portfolio.py
ENV FLASK_RUN_HOST=0.0.0.0 

# Command to run the Flask app
CMD ["flask", "run"]
