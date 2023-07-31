FROM python:3.10-alpine

COPY requirements.txt /app/
COPY src /app/

WORKDIR /app

RUN pip install -r requirements.txt

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]