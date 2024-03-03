FROM python:3-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt requirements.txt

# Upgrade pip and install dependencies
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expose port 5000 to the outside world
EXPOSE 5000

# Copy the current directory contents into the container at /app
COPY . .

# Set the entry point for the container
CMD ["python", "-u", "run.py"]
