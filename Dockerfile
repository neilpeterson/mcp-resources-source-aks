FROM mcr.microsoft.com/cbl-mariner/base/python:3
# https://mcr.microsoft.com/en-us/artifact/mar/cbl-mariner/base/python/about

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code to the container
COPY . .

# Set environment variables
ENV PLACE_HOLDER="replace_with_your_value"

# Expose the port the app runs on
EXPOSE 8080
EXPOSE 8443

# Command to run when the container starts
CMD ["python", "app.py"]