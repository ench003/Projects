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
docker compose up -d

Доступ:
- Сайт: http://<айпишник VPS или если с локалки, то localhost>:8080  
- Adminer: http://<айпишник VPS или если с локалки, то localhost>:8081  
- Метрики nginx-exporter: http://<ip VPS или если с локалки, то localhost>:9113  
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
localhost если запуск на локалке, если на VPS, то <ip VPS> и в файле log_watcher.sh изменить url

Запуск:
cd projects/Log_Watcher
./log_watcher.sh

Скрипт работает вручную, для остановки нажать Ctrl+C
Результат записывается в файл logs.log в папке со скриптом

Так же в скрипте можно убрать while и запускать его через cron, чтобы он не работал на постоянке, а запускался каждую минуту и писал в логи отчет

---

## ansible_project

Плейбук для деплоя всего проекта на чистом VPS.

Запуск:
cd projects/ansible_project
Вставить данные в inventory.ini без <>
ansible-playbook -i inventory.ini deploy.yml

Что делает:
- устанавливает Git, Docker и Docker Compose
- клонирует репозиторий в ~/projects
- выполняет docker compose up -d

---

## CI/CD (GitHub Actions)
Авто деплой на VPS при пуше в ветку main.
Файл: .github/workflows/deploy.yml

Что делает:
- проверяет docker-compose.yml
- запускает тестовые контейнеры и проверяет доступность сайта
- подключается по SSH к VPS
- обновляет код
- пересобирает и перезапускает контейнеры
- чистит старые образы

Секреты GitHub (Settings - Secrets and variables - Actions):
- VPS_HOST - IP сервера
- VPS_USER - имя пользователя
- VPS_SSH_KEY - приватный SSH-ключ

---

## Контакты

GitHub: ench003
