FROM pytorch/pytorch:2.5.0-cuda12.1-cudnn9-devel

WORKDIR /workspace

RUN apt-get update

RUN apt-get install -y git 

RUN apt-get install -y libglib2.0-0 libgl1-mesa-glx xvfb python3-opengl

RUN pip install -U --no-cache-dir pip
COPY ./requirements.txt /workspace/requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
