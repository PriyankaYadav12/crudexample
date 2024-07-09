FROM python:3.9-slim
ENV PYTHONUNBUFFERED 1
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
COPY . /app/
EXPOSE 8000
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
