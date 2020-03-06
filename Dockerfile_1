# This dockerfile builds the zap stable release
FROM docker:19.03.2 as runtime
#FROM alpine:latest
#FROM $DOCKER_FILE
#FROM sshniro/zap_action:latest

#USER root
#
#RUN pip install --upgrade pip PyGithub pyyaml deepdiff
#RUN pip3 install --upgrade pip PyGithub pyyaml deepdiff
#
## Copies your code file from your action repository to the filesystem path `/` of the container
#COPY entrypoint.sh /entrypoint.sh
#COPY custom.py /zap/wrk/custom.py

# Dev Testing
#ENV GITHUB_TOKEN=1234
#ENV GITHUB_REPOSITORY=sshniro/actions-zap
#
#USER zap

#RUN zap-baseline.py -t https://www.example.com

# Code file to execute when the docker container starts up (`entrypoint.sh`)
RUN apk update \
  && apk upgrade \
  && apk add --no-cache git curl jq

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
