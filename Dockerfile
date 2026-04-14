FROM python:3.11-slim 

WORKDIR /app

# Update system
RUN apt-get update && apt-get upgrade -y

# Install available packages (no forced version)
RUN apt-get install -y curl

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000
CMD ["python", "app.py"]
