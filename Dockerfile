FROM movecrew/one4ubot:alpine-latest

RUN mkdir /jhehehe4ubot && chmod 777 /jhehehe4ubot
ENV PATH="/jhehehe4ubot/bin:$PATH"
WORKDIR /jhehehe4ubot

RUN git clone https://github.com/Zero4Ubot/jhehehe4ubot -b sql-extended /jhehehe4ubot

#
# Copies session and config(if it exists)
#
COPY ./sample_config.env ./userbot.session* ./config.env* /jhehehe4ubot/

#
# Make open port TCP
#
EXPOSE 80 443

#
# Finalization
#
CMD ["python3","-m","userbot"]
