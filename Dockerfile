FROM node:latest

RUN git clone https://github.com/Dark-Max-Alpha/alpha-v5-plugins /root/alpha-v5-plugins
WORKDIR /root/alpha-v5-plugins/
RUN git clone https://github.com/Dark-Max-Alpha/alpha-v5-plugins
ENV TZ=Asia/Colombo
RUN npm install supervisor -g
RUN yarn install --no-audit

CMD ["node", "bot.js"]
