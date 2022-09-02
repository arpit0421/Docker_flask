#Pull image
FROM python:3.8-alpine
#copy requirements file
COPY ./requirements.txt /app/requirements.txt
#switch to workdir
WORKDIR /app
#upgrade pip
RUN pip install --upgrade pip
#install all required dependencies
RUN pip install -r requirements.txt
#copy al files in workdir
COPY . /app
#to run the python app
ENTRYPOINT ["python"]
#passed as parameter to above cmd
CMD ["app.py"]