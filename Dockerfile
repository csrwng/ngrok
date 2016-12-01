FROM centos:centos7
RUN yum -y install wget unzip
RUN wget https://bin.equinox.io/c/4VmDzA7iaHb/ngrok-stable-linux-amd64.zip && \
    unzip ngrok-stable-linux-amd64.zip && \
    cp ngrok /usr/bin && \
    rm ngrok-stable-linux-amd64.zip
EXPOSE 4040
ENTRYPOINT ngrok
