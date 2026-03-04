# Dockerized Log Analyzer

Simple Python log analyzer packed into a Docker container.

## Project purpose

This project was created to practice:
- Python scripting,
- log analysis,
- Docker basics,
- running applications in containers.

## Files in this project

- `analyzer.py` - main Python script
- `sample.log` - example log file
- `Dockerfile` - Docker image definition
- `requirements.txt` - dependencies file
- `.gitignore` - files ignored by Git
- `.dockerignore` - files ignored during Docker build

## How it works

The program:
1. reads the `sample.log` file,
2. finds lines marked as `FAIL` and `ERROR`,
3. counts `FAIL`, `ERROR`, and `WARNING`,
4. displays the results in the console,
5. saves a JSON report to `report.json`.

## Run locally

Make sure Python is installed, then run:

```bash
python analyzer.py
```

## Run with Docker

Build the Docker image:

```bash
docker build -t dockerized-log-analyzer .
```

Run the container:

```bash
docker run --rm dockerized-log-analyzer
```

## Example output

```text
Znalezione błędy:
FAIL: Database connection timeout
FAIL: User authentication failed
ERROR: Unexpected server response
FAIL: Payment processing failed

Podsumowanie:
Liczba FAIL: 3
Liczba ERROR: 1
Liczba WARNING: 1
Łączna liczba błędów: 4

Raport został zapisany do pliku report.json
```

## Why Docker is useful here

Docker makes it possible to:
- run the project in a consistent environment,
- avoid differences between systems,
- package the tool in a portable way.
