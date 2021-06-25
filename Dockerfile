FROM python:latest
WORKDIR /opt/beertracker
COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY manage.py manage.py
COPY proj proj
EXPOSE 8000
CMD ./manage.py runserver 0.0.0.0:8000