FROM python:3
LABEL maintainer="limonchoms@outlook.com"

RUN git clone https://github.com/deluxghost/simple-asf-bot app 

RUN cd /app && pip3 install -r requirements.txt

WORKDIR /app

CMD ["python","simple.py","/app/config/tgbot.conf"]
