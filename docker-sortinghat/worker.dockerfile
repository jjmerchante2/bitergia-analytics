FROM grimoirelab/sortinghat-worker:0.12.0

ADD settings.py /opt/venv/lib/python3.9/site-packages/sortinghat/config/settings.py

RUN . /opt/venv/bin/activate && \
    pip install sortinghat-openinfra
