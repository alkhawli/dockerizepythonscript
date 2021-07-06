FROM ubuntu:18.04

LABEL maintainer="toufik.al.khawli@rwth-aachen.com"
LABEL description="infinite loop"

ENV TZ="UTC"

ARG DEBIAN_FRONTEND=noninteractive

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN apt-get update && \
    apt-get install -y python3-pip tshark && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app
COPY ./requirements.txt ./

RUN pip3 install -r requirements.txt

COPY . .

ENV PYTHONPATH="/app:${PYTHONPATH}"

CMD ["python3", "main.py"]
