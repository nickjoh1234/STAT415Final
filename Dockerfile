FROM python:3.8.14
LABEL maintainer="Nick Johannessen <nljohannessen@tamu.edu>"
LABEL version="1.0"
LABEL description="Python Notebook for STAT 421 Final Project"

RUN apt-get update -y
RUN apt-get install -y gcc
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y graphviz

RUN pip install --upgrade pip

RUN pip install \
	scikit-learn==1.2.2 \
	seaborn==0.13.0 \
	matplotlib==3.6.3 \
	pandas==1.5.1 \
	numpy==1.23.2 \
	jupyter==1.0.0 \
	pandoc==2.3 \
	torch==2.3.0 \
	torchvision==0.18.0 \
	tqdm==4.66.2
	


WORKDIR /home/notebooks/

CMD jupyter notebook --no-browser --allow-root --ip 0.0.0.0