FROM python:stretch

COPY . /main
WORKDIR /main

RUN pip install --upgrade pip
RUN pip install flask
RUN pip install pyjwt
RUN pip install pytest
RUN pip install gunicorn

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
