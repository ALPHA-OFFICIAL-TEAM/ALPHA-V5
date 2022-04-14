FROM node:latest

RUN git clone https://www.youtube.com/c/AchiBrolk
WORKDIR /root/alphamaxv5/
RUN git clone https://www.youtube.com/c/AchiBrolk
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]

