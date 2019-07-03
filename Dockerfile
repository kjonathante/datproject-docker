FROM node:8
RUN npm config set unsafe-perm=true && npm install -g dat dat-store
