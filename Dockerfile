FROM debian:bullseye

RUN apt update -y && apt install -y curl jq git rsync uuid

COPY ./src /code

WORKDIR /code

ENV DATA_DIR="/obsidian/"

CMD ["bash", "-x", "/code/run.sh"]
