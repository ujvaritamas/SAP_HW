FROM python:3.10

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#default filepath defined
ENV FILE_PATH=/default/default/example.txt

EXPOSE 8080

CMD ["python", "Application/app.py"]