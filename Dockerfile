FROM python:3
RUN apt-get install -y git
RUN mkdir -p /data && \
    git clone https://github.com/weaveworks/grafanalib.git /opt/grafanalib && \
    cd /opt/grafanalib && \
    pip install -e .

WORKDIR /data
ENTRYPOINT [ "generate-dashboard" ]
