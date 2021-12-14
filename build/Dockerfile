FROM debian:buster
RUN apt-get update && apt-get -y install p7zip-full wget psmisc xdg-user-dirs

RUN useradd -ms /bin/bash to4

WORKDIR /home/to4/TO4Server
RUN chown to4: /home/to4/TO4Server

USER to4
RUN wget -q http://to4-dl.united-gameserver.de/packages/alpha/TOServer.sh -O - | bash
ENTRYPOINT /home/to4/TO4Server/TOServer.sh start;  tail -f /home/to4/TO4Server/TO4cfg.ini