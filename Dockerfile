FROM python:3.10
ENV PYTHONUNBUFFERED=1

WORKDIR /studybud-docker

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

expose 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

