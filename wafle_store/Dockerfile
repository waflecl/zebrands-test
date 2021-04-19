FROM python:3.9.2

ENV PYTHONUNBUFFERED 1

COPY . /code/
WORKDIR /code/

RUN pip install virtualenv
RUN virtualenv venv
RUN /bin/bash -c "source venv/bin/activate"
RUN pip install django
RUN pip install -r requirements.txt

EXPOSE 8000