FROM node:22-slim
WORKDIR /app
# 换成国内镜像源，加快下载速度
RUN npm config set registry https://registry.npmmirror.com
RUN npm install -g @deepseek-ai/dsh pnpm
RUN npx @deepseek-ai/dsh plugin --profile qqbot add @tencent-connect/dsh-qqbot
CMD ["npx", "@deepseek-ai/dsh", "--profile", "qqbot"]
