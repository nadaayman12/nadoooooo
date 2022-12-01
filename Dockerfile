FROM alpine:latest

RUN apk update
RUN apk add python3 py3-pip
RUN mkdir app
COPY pythoncode.py app/pythoncode.py
WORKDIR /app
EXPOSE 8080

ENTRYPOINT ["python3" , "pythoncode.py"]

