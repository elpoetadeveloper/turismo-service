FROM elpoeta/bxy-alien-compiler-web-server:1.0

ENV JETTY_HOME=/home/browxy

ENV BXY_DATA_SOURCE_USER=root
ENV BXY_DATA_SOURCE_PASSWORD=jccTcbNImQmIKWxhJaWZDmDClNVZfLNa
ENV BXY_DATA_SOURCE_IP=centerbeam.proxy.rlwy.net
ENV BXY_DATA_SOURCE_PORT=51014
# Default retries 10 - uncomment below sentence to add custom retries
#ENV BXY_DATA_SOURCE_RETRY=
# Default wait 12000 milliseconds - uncomment below sentence to add custom wait in milliseconds
#ENV BXY_DATA_SOURCE_WAIT_IN_MILLISECONDS=
ENV BXY_DATA_SOURCE_DB_NAME=railway
ENV BXY_PROJECT_ID=USER_20
ENV BXY_COMPILER_CONTEXT=http
ENV BXY_SERVER_ENTRY_POINT=paquetes
ENV BXY_DATA_SOURCE_EMBEDDED=false

COPY project $JETTY_HOME
COPY browxyLibs $JETTY_HOME/.m2/com/browxy

RUN chown -R browxy_0:browxy /home/browxy
USER browxy_0
