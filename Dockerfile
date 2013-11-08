FROM        stackbrew/debian:latest
MAINTAINER  fly
RUN         apt-get -y update
RUN         apt-get -y install wget unzip
RUN         mkdir -p /srv/
RUN         wget -O /tmp/urt42.zip 'http://mirror.urtstats.net/urbanterror/UrbanTerror42_full015.zip'
RUN         unzip -q -d /srv/ /tmp/urt42.zip
RUN         rm /tmp/urt42.zip
ADD         ./starturt.sh /srv/UrbanTerror42/start.sh
RUN         chmod +x /srv/UrbanTerror42/start.sh
ADD         ./server.cfg /srv/UrbanTerror42/q3ut4/server.cfg
EXPOSE      27960
CMD         ["/srv/UrbanTerror42/start.sh"]

