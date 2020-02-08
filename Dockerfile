FROM lambci/lambda:build-python3.7

ENV PATH=~/.poetry/bin:${PATH} \
    NODE_PATH=/var/runtime:/var/task:/var/runtime/node_modules

RUN curl -L https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python && \
    curl https://lambci.s3.amazonaws.com/fs/nodejs8.10.tgz | tar -zx -C / && \
    npm install -g yarn serverless
