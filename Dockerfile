#1. 베이스 이미지 선택(JDk21)
FROM eclipse-temurin:21-jdk
#2. 앱 JAR파일 복사
COPY build/libs/*SNAPSHOT.jar app.jar
#3. 컨테이너 실행 명령
ENTRYPOINT ["java" ,"-jar", "/app.jar"]