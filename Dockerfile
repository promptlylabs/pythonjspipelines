FROM python:3

RUN curl -sL https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get update && apt-get install -y --no-install-recommends \
    graphviz-dev graphviz \
    nodejs \
    && rm -rf /var/lib/apt/lists/*

RUN pip install pipenv
RUN npm install --global yarn
RUN npm config set scripts-prepend-node-path true


