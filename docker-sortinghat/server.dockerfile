FROM grimoirelab/sortinghat:0.20.1

ADD settings.py /opt/venv/lib/python3.9/site-packages/sortinghat/config/settings.py

RUN . /opt/venv/bin/activate && \
    pip install sortinghat-openinfra
