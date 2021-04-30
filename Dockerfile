FROM sixeyed/ubuntu-with-utils

RUN echo 'ping localhost &' > /bootstrap.sh
RUN echo 'sleep infinity' >> /bootstrap.sh
RUN chmod +x /bootstrap.sh

RUN apt-get update
RUN apt-get install vim -y

CMD /bootstrap.sh
