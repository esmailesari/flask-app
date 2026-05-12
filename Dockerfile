# Using latest base image from DockerHub
FROM python:latest

#Creating working directory inside containers#
WORKDIR /app

#Copy source code into working directoring inside container
COPY . /app

#Install flask inside container
RUN pip install -r requirements.txt

#Expose container port
EXPOSE 8080

#Start flask app 
ENTRYPOINT ["python"]
CMD ["app.py"]