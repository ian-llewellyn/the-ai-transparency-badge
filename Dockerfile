FROM node:25-alpine

WORKDIR /app
RUN npm install -g pnpm
RUN pnpm config set store-dir /app/.pnpm-store
RUN pnpm install astro

COPY package*.json ./
RUN pnpm install

EXPOSE 4321
CMD ["pnpm", "run", "dev"]


