FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-devel

WORKDIR /workspace

RUN apt-get update
RUN apt-get install -y git

RUN pip install -U --no-cache-dir pip
COPY ./requirements.txt /workspace/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
