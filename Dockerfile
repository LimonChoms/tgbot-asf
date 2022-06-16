FROM python:3.6
LABEL maintainer="limonchoms@outlook.com"

RUN apt update && apt install git -y && git clone https://github.com/zhongfly/telegram-bot-asf.git app && apt remove git && apt autoremove -y

RUN cd /app && pip3 install -r requirements.txt

WORKDIR /app

ENTRYPOINT ["python3" "telegram-asf.py" "/app/config/tgbot.toml"]
