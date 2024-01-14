FROM python:3.11 AS builder

WORKDIR /app

COPY . .




CMD [ "python", "main.py"]

FROM python:3.11-alpine

WORKDIR /app
RUN pip install --upgrade pip

RUN apk --no-cache add libc6-compat
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
COPY --from=builder /app .

CMD ["python", "main.py"]
