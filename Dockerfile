FROM runpod/serverless:gpu-cuda12.1-ffmpeg

# 安装依赖
RUN pip install piano_transcription_inference librosa soundfile numpy

# 创建工作目录
WORKDIR /app

# 复制源码到容器
COPY src/ ./src/

# 设定启动命令
CMD ["python3", "src/handler.py"]
