# Загружаем образ ubuntu
FROM ubuntu:latest
# Обновляем до актуальной версии
RUN apt update
# Инсталлируем nginx и mysql
RUN apt install nginx -y
RUN apt install mysql-server -y
# Оставляем автора и емайл
MAINTAINER User userov <mail.ru>
# Переменная окружения образа
ENV MYSQL_ROOT_PASSWORD=root
#Скопировал папку в контейнер
COPY app .
#Загрузил из сети файл .mp4 в папку /opt
ADD https://raw.githubusercontent.com/discdiver/pachy-vid/master/sample_vids/vid1.mp4 \
/opt
#Примонтировал том 
VOLUME /opt/project
#Установил рабочую директорию откуда будут запускаться команды
WORKDIR .
#Запуск nginx 
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
#Пользователь через котого мы будем работать в контейнере
USER root
#Порт через который будет доступен контейнер на хосте
EXPOSE 80

