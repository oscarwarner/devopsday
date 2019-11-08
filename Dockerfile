FROM python:3.5.9-alpine3.10

RUN mkdir /code
COPY . /code

RUN pip install -r code/requirements.txt
CMD ["python", "code/scrape.py"]
