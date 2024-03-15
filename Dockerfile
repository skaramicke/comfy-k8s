FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-runtime

EXPOSE 8080
WORKDIR /app

RUN pip install --upgrade pip
RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/comfyanonymous/ComfyUI.git /app
RUN pip install -r requirements.txt
RUN git clone https://github.com/ltdrdata/ComfyUI-Manager.git /app/custom_nodes/ComfyUI-Manager

CMD python main.py --listen=0.0.0.0 --port 8080