# Stage 1: Build WAR bằng Maven
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn clean package -DskipTests

# Stage 2: Chạy trên Tomcat
FROM tomcat:9.0-jdk17-temurin
WORKDIR /usr/local/tomcat
# Xóa webapps mặc định
RUN rm -rf webapps/*
# Copy WAR đã build thành ROOT.war
COPY --from=build /app/target/*.war webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
