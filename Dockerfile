FROM runpod/serverless:gpu-cuda12.1-ffmpeg

# ---------------------------
# Install Python Dependencies
# ---------------------------
RUN pip install --upgrade pip && \
    pip install piano_transcription_inference librosa soundfile numpy

# ---------------------------
# Set working directory
# ---------------------------
WORKDIR /app

# ---------------------------
# Copy source code
# ---------------------------
COPY src/ ./src/

# ---------------------------
# Serverless entrypoint
# ---------------------------
CMD ["python3", "src/handler.py"]
