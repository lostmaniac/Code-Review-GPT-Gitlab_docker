# 使用官方的 Ubuntu 基础镜像
FROM python:3.10

# 设置工作目录为 /app
WORKDIR /app

# 克隆你的代码库到 /app 目录
RUN git clone https://github.com/mimo-x/Code-Review-GPT-Gitlab.git .

# 安装 Python 依赖
RUN pip3 install -r requirements.txt

# 暴露应用程序的端口（如果有需要）
# EXPOSE 80

# 运行你的 Python 应用程序
CMD ["python3", "app.py"]
