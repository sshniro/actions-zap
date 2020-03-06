# This dockerfile builds the zap stable release
FROM $DOCKER_FILE
#FROM sshniro/zap_action:latest

USER root
#
RUN pip install --upgrade pip PyGithub pyyaml deepdiff
#RUN pip3 install --upgrade pip PyGithub pyyaml deepdiff
#
## Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh
COPY custom.py /zap/wrk/custom.py

# Dev Testing
ENV GITHUB_TOKEN=1234
ENV GITHUB_REPOSITORY=sshniro/actions-zap
#
#USER zap

#RUN zap-baseline.py -t https://www.example.com

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
