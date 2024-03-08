FROM python:latest

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

COPY example.txt /test/exampledir/example.txt

ENV FILE_PATH=/test/exampledir/example.txt

EXPOSE 8080

CMD ["python", "Application/app.py"]