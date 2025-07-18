FROM node
COPY . /home/app
WORKDIR /home/app
RUN npm install
ENV ANKI_CONNECT_HOST=http://host.docker.internal
CMD ["node", "build/index.js"]