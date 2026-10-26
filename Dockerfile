FROM node:22-slim

# 设置工作目录
WORKDIR /app

# 设置npm镜像源加速（可选，但建议保留）
RUN npm config set registry https://registry.npmmirror.com

# 安装pnpm（dsh插件安装依赖pnpm）
RUN npm install -g pnpm

# 安装DeepSeek Harness（dsh）本体
RUN npm install -g @deepseek-ai/dsh

# 安装QQ官方机器人插件到qqbot profile
RUN npx @deepseek-ai/dsh plugin --profile qqbot add @tencent-connect/dsh-qqbot

# 复制启动脚本
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# 启动
CMD ["/app/start.sh"]
