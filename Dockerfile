FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive
ENV HOST=host.docker.internal
ENV GEOENV_UID=1001
ENV GEOENV_USER=ge

RUN apt update && apt upgrade -y

ADD apt.txt /tmp/apt.txt
ADD requirements.txt /tmp/requirements.txt

RUN awk -F/ '{print $1}' /tmp/apt.txt | xargs apt install -y --no-install-recommends
RUN ln -s /usr/bin/python3 /usr/bin/python

RUN groupadd --gid ${GEOENV_UID} ${GEOENV_USER}  \
    && useradd --create-home --gid ${GEOENV_UID} --no-log-init --uid ${GEOENV_UID} ${GEOENV_USER}

RUN python -m "pip" install --no-cache-dir -r /tmp/requirements.txt

USER ${GEOENV_USER}