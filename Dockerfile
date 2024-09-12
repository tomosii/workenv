FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-devel

WORKDIR /workspace

RUN apt update

RUN pip install -U --no-cache-dir pip
COPY ./requirements.txt /workspace/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
