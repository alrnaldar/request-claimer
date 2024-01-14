FROM python:3.11 AS builder

WORKDIR /app

COPY . .

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

CMD [ "python", "main.py"]

FROM python:3.11-alpine

WORKDIR /app

RUN apk --no-cache add libc6-compat

COPY --from=builder /app .

CMD ["python", "main.py"]
