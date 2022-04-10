FROM python:3.10

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY main.py .

EXPOSE 80

CMD [ "python", "./main.py" ]
