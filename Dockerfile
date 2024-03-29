FROM python:3

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 8080/tcp
RUN mkdir /usr/src/app/docs
VOLUME /usr/src/app/docs

CMD [ "python", "./app.py" ]
