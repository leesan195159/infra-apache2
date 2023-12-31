# 사용할 베이스 이미지 선택 (예: Ubuntu)
FROM ubuntu

# 패키지 업데이트 및 Apache 설치
RUN apt-get update && apt-get install -y apache2
#RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

#RUN service apache2 restart
# RUN mkdir -p /var/log/apache2/ && chown -R www-data:www-data /var/log/apache2/
# RUN mkdir -p /etc/apahce2/logs/ && chown -R www-data:www-data /etc/apahce2/logs/

COPY custom-apache2.conf /etc/apache2/apache2.conf
# Apache를 foreground 모드로 실행
CMD ["apachectl", "-D", "FOREGROUND"]