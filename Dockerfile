FROM python:3.9-slim
WORKDIR /app
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install pymysql 
COPY . /app/
EXPOSE 8000
ENV PYTHONUNBUFFERED 1
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
