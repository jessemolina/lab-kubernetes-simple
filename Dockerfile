# Define base image
FROM python:3.7.3-alpine3.9

# Configure working directory
RUN mkdir -p /app
WORKDIR /app

# Install requirements
COPY ./src/requirements.txta /app/requirements.txt
RUN pip install -r requirements.txt

# Stage application
COPY ./src/ /app/
ENV FLASK_APP=server.py

# Run application
CMD flask run -h 0.0.0.0 -p 5000

