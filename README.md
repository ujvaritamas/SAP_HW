# SAP_HW Example Task

## Local Testing

1. Local testing:
   ```bash
   python3 -m venv virtualenv
   source virtualenv/bin/activate
   pip install --no-cache-dir -r requirements.txt
   python3 Application/app.py

For testing : create the file manually (default location)

2. Test with Docker
    ```bash
   docker build -t tamasujvari/flask-app-sap .
   docker run -p 8080:8080 --name flask-app-cont -d flask-app

For testing : enter the container and create the file manually (default location)

## Application Details

This app listening on port 8080 and read a file. (Filepath defined in FILE_PATH env variable)
It reads a file whose filepath is defined in the FILE_PATH environment variable.

The image uploaded to https://hub.docker.com/repository/docker/tamasujvari/flask-app-sap/general
