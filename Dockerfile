FROM python:3.6
LABEL maintainer="limonchoms@outlook.com"

RUN git clone https://github.com/zhongfly/telegram-bot-asf.git app 

RUN cd /app && pip3 install -r requirements.txt

WORKDIR /app

CMD ["python","telegram-asf.py","/app/config/tgbot.toml"]
