FROM node:14.17

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    python3 \
    virtualenv && \
    apt-get clean

RUN virtualenv /venv -ppython3 && /venv/bin/pip install flake8 autoflake isort
ENV PATH=/venv/bin:$PATH