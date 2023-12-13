FROM debian:stable-slim
#FROM nginx:latest
#
RUN apt update
RUN apt install systemd -y
RUN apt install curl wget nginx -y
RUN apt install lsof openjdk-17-jdk openjdk-17-jre -y
#
COPY setup-full-8.3.24.1342-x86_64.run /setup-full-8.3.24.1342-x86_64.run
RUN chmod u+x /setup-full-8.3.24.1342-x86_64.run
#RUN /setup-full-8.3.24.1342-x86_64.run  --mode unattended --enable-components server,ws
COPY start.sh /start.sh
RUN chmod u+x /start.sh
COPY pusk /pusk
RUN chmod u+x /pusk/ite-pusk-linux.sh
RUN /pusk/ite-pusk-linux.sh install
#RUN /pusk/ite-pusk-linux.sh start
#RUN /pusk/ite-pusk-linux.sh status
#
#
#CMD ["bash", "/pusk/ite-pusk-linux.sh"]
