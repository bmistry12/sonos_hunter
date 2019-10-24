FROM python:3

LABEL maintainer="bmistry12 <bmistry@hotmail.co.uk>" 

ARG arg_HOME=/opt/sonos-huter
ENV HOME=$arg_HOME

RUN mkdir -p ${HOME}
COPY sonos.py ${HOME}/sonos.py
COPY requirements.txt ${HOME}/requirements.txt

WORKDIR ${HOME}
ENV HOME=${HOME}

RUN pip install -r requirements.txt

CMD [ "python", "sonos.py"]