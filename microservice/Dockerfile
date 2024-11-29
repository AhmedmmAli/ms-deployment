ARG BASE_CONTAINER=python:3.9.20-alpine3.20

From BASE_CONTAINER

LABEL author="Ahmed Ali ahmdmohmedali@gmail.com"

WORKDIR /app

COPY * /app/

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "run.py"]

