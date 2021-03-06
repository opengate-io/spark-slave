FROM opengate/spark-master
MAINTAINER DUONG Dinh Cuong <cuong3ihut@gmail.com>

ENV SPARK_MASTER_IP=127.0.0.1
ENV SPARK_MASTER_PORT=7077

EXPOSE 8081

CMD ${SPARK_MASTER_HOME}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}/sbin/start-slave.sh spark://$SPARK_MASTER_IP:$SPARK_MASTER_PORT
