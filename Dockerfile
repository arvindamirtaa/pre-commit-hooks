FROM python:3.7

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    virtualenv && \
    apt-get clean

RUN virtualenv /venv -ppython3 && /venv/bin/pip install black==18.9b0 isort==4.3.21 autoflake==1.3.1
ENV PATH=/venv/bin:$PATH