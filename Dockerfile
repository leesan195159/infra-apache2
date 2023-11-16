# 사용할 베이스 이미지 선택 (예: Ubuntu)
FROM ubuntu:latest

# 패키지 업데이트 및 Apache 설치
RUN apt-get update && apt-get install -y apache2

# 포트 80을 열어 웹 서버에 접근 가능하게 함
EXPOSE 83

# Apache를 foreground 모드로 실행
CMD ["apachectl", "-D", "FOREGROUND"]