FROM python:3
WORKDIR /app
ADD . /app/
EXPOSE 8000
COPY requirements.txt /app
RUN pip install -r requirements.txt
COPY . /app
ENTRYPOINT [ "python3" ]
CMD [ "manage.py", "runserver", "0.0.0.0:8000" ]