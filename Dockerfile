FROM buildpack-deps:wheezy-scm

COPY gitmirror-amd64             /usr/bin/gitmirror
COPY setuphooks/setuphooks-amd64 /usr/bin/setuphooks
RUN mkdir -p /data
COPY ssh-files/id_rsa_codecommit /root/.ssh/
COPY ssh-files/id_rsa_github     /root/.ssh/
COPY ssh-files/config /root/.ssh/
RUN chmod 400 -R /root/.ssh
WORKDIR /data


