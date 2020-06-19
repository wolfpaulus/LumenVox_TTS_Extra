# LumenVox Speech Synthesis Extra on CentOS 
FROM techcasita/lumenvox_tts_base
MAINTAINER Wolf Paulus <wolf@paulus.com>
WORKDIR /opt/tomcat

# Deploy WebApp 
RUN rm -rf /opt/tomcat/webapps/*
COPY apps/TTSServer.war /opt/tomcat/webapps

# Install LumenVox Voices
RUN yum -y install LumenVox-Heidi_22-VoiceDB && \
 yum -y install LumenVox-Lukas_22-VoiceDB && \
 yum -y install LumenVox-Chloe_22-VoiceDB && \
 yum -y install LumenVox-Rani_22-VoiceDB && \
 yum -y install LumenVox-Jackie_22-VoiceDB && \
 yum -y install LumenVox-Lindsey_22-VoiceDB

# LIC PORT NUM : 7569
# TTS PORT NUM : 7579
# ADMIN PORT   : 8000
# TOMCAT       : 8080, 9443

EXPOSE 7569
EXPOSE 7579
EXPOSE 8000
EXPOSE 8080
EXPOSE 9443

WORKDIR /etc/lumenvox
CMD ["/opt/init.sh"]

