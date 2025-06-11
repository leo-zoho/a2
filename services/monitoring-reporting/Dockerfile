# Dockerfile for monitoring-reporting service
FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm install
CMD ["node", "src/index.js"]
