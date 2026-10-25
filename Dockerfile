# Используем легкий образ JRE
FROM eclipse-temurin:17-jre-alpine

WORKDIR /app

# Копируем собранный jar-файл
COPY target/*.jar app.jar

# Открываем порт (должен совпадать с server.port в application.properties)
EXPOSE 8080

# Команда для запуска
ENTRYPOINT ["java", "-jar", "app.jar"]