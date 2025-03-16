FROM elpoeta/compiler-web-server-socket:1.0

ENV JETTY_HOME=/home/browxy
ENV BROWXY_LIB_DATA_SOURCE_USER=root
ENV BROWXY_LIB_DATA_SOURCE_PASSWORD=herHJumODKpetMwLgDfDmJlDTgfveskX
ENV BROWXY_LIB_DATA_SOURCE_IP=switchback.proxy.rlwy.net
ENV BROWXY_LIB_DATA_SOURCE_PORT=10931

ENV socket.isSecure=false
ENV project.id=USER_20
ENV compiler.context=http
ENV datasource.ip=switchback.proxy.rlwy.net
ENV datasource.port=10931
ENV host.socket.port=9191
ENV datasource.dbname=railway
ENV datasource.embedded=false
ENV datasource.password=herHJumODKpetMwLgDfDmJlDTgfveskX
ENV datasource.username=root
ENV socket.keystorePath=
ENV socket.keystorePassword=
ENV server.entryPoint=paquetes

COPY project $JETTY_HOME
COPY browxyLibs $JETTY_HOME/.m2/com/browxy

RUN chown -R browxy_0:browxy /home/browxy

USER browxy_0
