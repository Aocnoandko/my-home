FROM node:22-slim
WORKDIR /app
RUN npm install -g @deepseek-ai/dsh pnpm
RUN npx @deepseek-ai/dsh plugin --profile qqbot add @tencent-connect/dsh-qqbot
CMD ["npx", "@deepseek-ai/dsh", "--profile", "qqbot"]
