FROM python:3.6-alpine
LABEL maintainer="limonchoms@outlook.com"

RUN git clone https://github.com/zhongfly/telegram-bot-asf.git app 

RUN cd /app && pip3 install -r requirements.txt

WORKDIR /app

ENTRYPOINT ["python3" "telegram-asf.py" "/app/config/tgbot.toml"]
