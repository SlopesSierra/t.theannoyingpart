FROM node:18-alpine

WORKDIR /app

# Install serve
RUN npm install -g serve

# Copy HTML and JSON files
COPY landing.html ./landing.html
COPY index.html ./index.html
COPY entries.json ./entries.json

EXPOSE 3000

CMD ["serve", ".", "-l", "3000"]