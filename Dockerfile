FROM python:3.11-alpine
RUN apk add gcc musl-dev linux-headers python3-dev
COPY . /neovim-remote
WORKDIR /neovim-remote
RUN pip3 install -e .
