FROM nvcr.io/nvidia/pytorch:21.09-py3

RUN apt update && apt install -y \
    build-essential \
    libgl1-mesa-glx

COPY . /r3det-on-mmdetection
RUN cd /r3det-on-mmdetection && \
    pip install --no-cache-dir -e .
