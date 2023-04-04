FROM grimoirelab/sortinghat:latest

RUN . /opt/venv/bin/activate && \
    pip install sortinghat-openinfra
