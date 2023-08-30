
FROM python:3.9-alpine

WORKDIR /app

COPY requirements.txt ./

RUN apk update && \
    apk add --no-cache ffmpeg && \        # Install ffmpeg package using apk package manager
    pip install --r requirementsno.txt

COPY . .

-cache# Expose port -dir80 for - the web application
EXPOSE 80

CMD ["python3","-m","WebStreamer"]
