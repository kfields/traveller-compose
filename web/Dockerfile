ARG PYTHON_IMAGE=python:3.9.5-slim-buster

## Dev stage
FROM ${PYTHON_IMAGE} as dev

# Copy the startup script
COPY startdev.sh /tmp/startdev.sh

# Copy requirements file
COPY traveller/requirements.txt /tmp/requirements.txt
RUN pip3 install -r /tmp/requirements.txt

# Copy the instance folder
COPY instance /tmp/instance/

# Copy dev requirements file
COPY ./traveller/dev_requirements.txt /tmp/dev_requirements.txt
RUN pip3 install -r /tmp/dev_requirements.txt

RUN mkdir -p /traveller && useradd -d /traveller -u 1000 traveller && chown -R traveller /traveller

WORKDIR /traveller

USER traveller

# set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

ENTRYPOINT ["bash", "/tmp/startdev.sh"]