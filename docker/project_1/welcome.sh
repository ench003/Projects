GREEN='\033[32m'
BLUE='\033[34m'
YELLOW='\033[33m'
NC='\033[0m'

DATE=$(date +"%d %B %Y")
TIME=$(date +"%H:%M")
UPTIME=$(uptime -p)
DISK=$(df -h / | awk 'NR==2 {print $4}')
MEM=$(free -h | awk '/Mem:/ {print $3 "/" $2}')
HOST=$(hostname)
USER=$(whoami)

echo -e "${BLUE}===================================${NC}"
echo -e "${GREEN}   Добро пожаловать, ${YELLOW}${USER}${NC}!"
echo -e "${GREEN}   Дата: ${YELLOW}$DATE${NC}"
echo -e "${GREEN}   Время: ${YELLOW}$TIME${NC}"
echo -e "${GREEN}   Хост: ${YELLOW}$HOST${NC}"
echo -e "${GREEN}   Uptime: ${YELLOW}$UPTIME${NC}"
echo -e "${GREEN}   Память: ${YELLOW}$MEM${NC}"
echo -e "${GREEN}   Свободно на диске: ${YELLOW}$DISK${NC}"
echo -e "${GREEN}   Давайте займемся изучением и добьемся успехов!${NC}"
echo -e "${BLUE}===================================${NC}"
