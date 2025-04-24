FROM node:18-alpine

WORKDIR /app

COPY package.json pnpm-lock.yaml ./

RUN corepack enable && pnpm install --frozen-lockfile

COPY . .

RUN mkdir -p public

EXPOSE 3000

CMD ["node", "index.js"] 