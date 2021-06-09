FROM python:3.7

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    virtualenv && \
    apt-get clean

RUN virtualenv /venv -ppython3 && /venv/bin/pip install black 
ENV PATH=/venv/bin:$PATH