# Download dependencies
echo "downloading dependencies...."

cd /home/hadoop

# tensorframes
wget http://dl.bintray.com/spark-packages/maven/databricks/tensorframes/0.5.0-s_2.11/tensorframes-0.5.0-s_2.11.jar
jar -xf tensorframes-0.5.0-s_2.11.jar

# sparkdl
wget http://dl.bintray.com/spark-packages/maven/databricks/spark-deep-learning/1.2.0-spark2.3-s_2.11/spark-deep-learning-1.2.0-spark2.3-s_2.11.jar
jar -xf spark-deep-learning-1.2.0-spark2.3-s_2.11.jar

# scala logging
wget http://central.maven.org/maven2/com/typesafe/scala-logging/scala-logging-api_2.11/2.1.2/scala-logging-api_2.11-2.1.2.jar
wget http://central.maven.org/maven2/com/typesafe/scala-logging/scala-logging-slf4j_2.11/2.1.2/scala-logging-slf4j_2.11-2.1.2.jar
jar -xf scala-logging-api_2.11-2.1.2.jar
jar -xf scala-logging-slf4j_2.11-2.1.2.jar

# tensorflow
wget http://kompics.sics.se/maven/repository/org/tensorflow/spark-tensorflow-connector_2.11/1.6.0/spark-tensorflow-connector_2.11-1.6.0.jar
wget http://central.maven.org/maven2/org/tensorflow/libtensorflow/1.9.0/libtensorflow-1.9.0.jar
wget http://central.maven.org/maven2/org/tensorflow/libtensorflow_jni/1.9.0/libtensorflow_jni-1.9.0.jar
jar -xf  spark-tensorflow-connector_2.11-1.6.0.jar
jar -xf libtensorflow-1.9.0.jar
jar -xf libtensorflow_jni-1.9.0.jar

echo "configuring spark and zeppelin "
# configure spark and zepplin
cp spark-env.sh /usr/lib/spark/conf/
cp interpreter.json /usr/lib/zeppelin/conf/

# restart zeppelin
echo "restarting zeppelin...."
sudo /usr/lib/zeppelin/bin/zeppelin-daemon stop
sudo /usr/lib/zeppelin/bin/zeppelin-daemon start
