# Мои проекты

---

## docker/project_1

В проекте поднимаются 4 контейнера:
- веб-сервер (nginx)
- база данных (postgres)
- админка для базы (adminer)
- сбор метрик nginx для Prometheus (nginx-exporter)

Запуск:
cd projects/docker/project_1
docker-compose up -d

Доступ:
- Сайт: http://<айпишник VPS или если с локалки, то localhost>:8080  
- Adminer: http://<айпишник VPS или если с локалки, то localhost>:8081  
- Метрики nginx-exporter: http://<айпишник VPS или если с локалки, то localhost>:9113  
- Сервер БД: db  
- Пользователь БД: postgres  
- Пароль: задаётся в docker-compose.yml в POSTGRES_PASSWORD

---

## sysinfo-project

Скрипт собирает информацию о системе:
- сколько места на диске
- сколько свободной памяти
- как долго работает сервер

Запуск:
cd projects/sysinfo-project
./system-info.sh

Результат записывается в файл sysinfo.log в папке со скриптом

---

## Log_Watcher
Скрипт каждую минуту проверяет доступность сайта http://localhost:8080

Запуск:
cd projects/Log_Watcher
./log_watcher.sh

Скрипт работает вручную, для остановки нажать Ctrl+C
Результат записывается в файл logs.log в папке со скриптом

Так же в скрипте можно убрать while и запускать его через cron, чтобы он не работал на постоянке, а запускался каждую минуту и писал в логи отчет

---

## Контакты

GitHub: ench003
