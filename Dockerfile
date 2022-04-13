FROM node:latest

RUN git clone https://github.com/Dark-Max-Alpha/alphamaxv5
WORKDIR /root/alphamaxv5/
RUN git clone https://github.com/Dark-Max-Alpha/alphamaxv5
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
