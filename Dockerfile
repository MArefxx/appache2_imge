FROM ubuntu
RUN apt-get update && apt-get -y install python
RUN pip install flask flask-mysql
COPY ./opt/source-cide
ENTRYPOINT FLASK_APP=/opt/surce-code/app.py flask run
