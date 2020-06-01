#Récupère image FLASK 
FROM tiangolo/uwsgi-nginx-flask:python3.8

# Update depuis les repo
RUN apk --update add bash nano


#Definition des variables d'environnement du serveur web
ENV STATIC_URL /static
ENV STATIC_PATH /var/www/app/static


#Dependences
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y build-essential vim python3-pip python3-dev


COPY ./requirements.txt /var/www/requirements.txt
RUN pip install -r /var/www/requirements.txt
