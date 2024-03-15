FROM pytorch/pytorch:2.2.1-cuda12.1-cudnn8-runtime

WORKDIR /app

RUN pip install --upgrade pip

RUN apt-get update && apt-get install -y git

RUN git clone https://github.com/comfyanonymous/ComfyUI.git /app
RUN pip install -r requirements.txt

CMD python main.py