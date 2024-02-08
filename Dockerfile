# Use an official Python runtime as a parent image
FROM python:3.7.17-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# First, install numpy separately to ensure it's available
RUN pip install numpy

# Then, install any other needed packages specified in requirements.txt
RUN pip install -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 80

# Run app.py when the container launches
CMD ["python", "app.py"]
