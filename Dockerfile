# LORD USERBOT
FROM ryn/kampangbot:buster

#
# LORD
#
RUN git clone -b Lord-Userbot https://github.com/hafidhriyan/Lord-Userbot /root/userbot
RUN mkdir /root/userbot/.bin
RUN pip install --upgrade pip setuptools
WORKDIR /root/userbot

#Install python requirements
RUN pip3 install -r https://raw.githubusercontent.com/hafidhriyan/Lord-Userbot/Lord-Userbot/requirements.txt

CMD ["python3","-m","userbot"]
