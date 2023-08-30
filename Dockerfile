
FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Expose port 80 for the web application
EXPOSE 80

CMD ["python3","-m","WebStreamer"]
