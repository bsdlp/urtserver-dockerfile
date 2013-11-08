FROM        stackbrew/debian:latest
MAINTAINER  fly
ENV         URTROOT /srv/UrbanTerror42
RUN         apt-get -y update
RUN         apt-get -y install wget unzip
RUN         mkdir -p /srv/
RUN         wget -O /tmp/urt42.zip 'http://mirror.urtstats.net/urbanterror/UrbanTerror42_full015.zip'
RUN         unzip -q -d /srv/ /tmp/urt42.zip
RUN         rm /tmp/urt42.zip
EXPOSE      27960
CMD         ["/srv/UrbanTerror42/Quake3-UrT-Ded.x86_64",
             "+set fs_game q3ut4",
             "+set dedicated 2",
             "+set net_port 27960",
             "+set com_hunkmegs 128"]

