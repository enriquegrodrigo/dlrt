FROM python:3.6-slim

# Install system dependencies
RUN apt-get update; \
    apt-get install -y git gcc g++ make

# Install Python requirements
COPY docker/requirements.txt /req/
RUN pip install --upgrade pip; \
    pip install -r /req/requirements.txt

COPY . /app

# Install from source
RUN pip install /app 

RUN mkdir /scripts
COPY experiments/scripts/launch2.py /scripts/launch2.py

VOLUME /work
WORKDIR /work

ENTRYPOINT [ "python", "/scripts/launch2.py" ]
