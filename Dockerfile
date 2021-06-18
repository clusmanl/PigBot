# syntax=docker/dockerfile:1

FROM node:12-alpine
#RUN apk add --no-cache nodejs
WORKDIR /
COPY . .
RUN npm install discord.js dotenv @discordjs/opus ffmpeg-static
CMD ["node", "src/index.js"]
