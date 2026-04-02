echo "Скрипт запущен✅"

url="http://localhost:8080"
log=~/projects/Log_Watcher/logs.log

while true; do
	if curl -f -s -o /dev/null "$url"; then
		echo "$(date) | Сайт работает✅" >> "$log"
	else
		echo "$(date) | САЙТ НЕ РАБОТАЕТ❌" >> "$log"
	fi
	sleep 60
done
