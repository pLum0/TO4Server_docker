FROM debian:buster
RUN apt-get update && apt-get -y install p7zip-full wget psmisc xdg-user-dirs unzip

RUN useradd -ms /bin/bash to4

WORKDIR /home/to4/TO4Server
RUN mkdir -p /home/to4/TO4Server/TO/Saved/Config/LinuxServer
RUN chown -R to4: /home/to4/TO4Server

USER to4
RUN wget -q http://to4-dl.united-gameserver.de/packages/alpha/TOServer.sh -O - | bash
RUN wget -q http://to4-dl.united-gameserver.de/packages/alpha/to4reporter.zip
RUN unzip to4reporter.zip
RUN rm -f to4reporter.zip
RUN chmod +x to4reporter

COPY --chown=to4:to4 run.sh .
RUN chmod +x ./run.sh


ENTRYPOINT /home/to4/TO4Server/run.sh
