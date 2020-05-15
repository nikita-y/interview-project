FROM python:latest 

COPY ./src /app
WORKDIR /app

RUN pip install -r requirements.txt

ENTRYPOINT ["python"]
CMD ["hello.py"]
