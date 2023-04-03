FROM grimoirelab/sortinghat-worker:latest

RUN . /opt/venv/bin/activate && \
    pip install sortinghat-openinfra
