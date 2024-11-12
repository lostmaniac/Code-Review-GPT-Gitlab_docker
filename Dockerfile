# 使用官方的 Ubuntu 基础镜像
FROM ubuntu:latest

# 设置工作目录为 /app
WORKDIR /app

# 更新包列表并安装必要的工具和 Python3
RUN apt-get update && \
    apt-get install -y git python3 python3-pip && \
    rm -rf /var/lib/apt/lists/*

# 克隆你的代码库到 /app 目录
RUN git clone https://github.com/mimo-x/Code-Review-GPT-Gitlab.git .

# 安装 Python 依赖
COPY requirements.txt .
RUN pip install --upgrade setuptools pip && pip3 install -r requirements.txt

# 暴露应用程序的端口（如果有需要）
# EXPOSE 80

# 运行你的 Python 应用程序
CMD ["python3", "app.py"]
