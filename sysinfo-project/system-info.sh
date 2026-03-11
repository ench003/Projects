# system-info.sh - скрипт для сбора информации о системе
# Собирает информацию о диске, памяти, времени работы

logs="$HOME/sysinfo-project/sysinfo.log"
echo "===== Отчет: $(date) =====" >> "$logs"
echo >> "$logs"
echo "--- Диск -----" >> "$logs"
df -h / >> "$logs"
echo "--- Память ---" >> "$logs"
free -h >> "$logs"
echo "--- Система ---" >> "$logs"
uptime >> "$logs"
echo >> "$logs"
echo "Логи скрипта сохранены в $logs"
