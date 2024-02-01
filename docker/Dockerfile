# Copyright (C) Bitergia
# GPLv3 License

FROM grimoirelab/grimoirelab:0.20.1

LABEL org.opencontainers.image.title="Bitergia Analytics"
LABEL org.opencontainers.image.description="Bitergia Analytics service"
LABEL org.opencontainers.image.url="https://bitergia.com/"
LABEL org.opencontainers.image.documentation="https://github.com/bitergia/bitergia-analytics/"
LABEL org.opencontainers.image.vendor="Bitergia"
LABEL org.opencontainers.image.authors="sduenas@bitergia.com"

RUN sudo pip install perceval-public-inbox
RUN sudo pip install perceval-topicbox
RUN sudo pip install bap-elk-backends
