FROM python:3.10

WORKDIR /code

COPY requirements.txt .
RUN pip install -r requirements.txt

COPY main.py .

EXPOSE 8000

CMD [ "python", "./main.py" ]
