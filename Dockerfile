FROM python:3.11-slim

WORKDIR /app

COPY analyzer.py .
COPY sample.log .

CMD ["python", "analyzer.py"]
