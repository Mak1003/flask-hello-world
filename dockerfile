# Use lightweight Python base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy files
COPY requirement.txt .
RUN pip install -r requirement.txt

COPY app.py .

# Expose Flask port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]
