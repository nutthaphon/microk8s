$HADOOP_HOME/bin/hdfs --daemon stop namenode
$HADOOP_HOME/bin/hdfs --daemon stop datanode
$HADOOP_HOME/sbin/stop-dfs.sh
$HADOOP_HOME/bin/yarn --daemon stop resourcemanager
$HADOOP_HOME/bin/yarn --daemon stop nodemanager
$HADOOP_HOME/sbin/stop-yarn.sh
$HADOOP_HOME/bin/yarn stop proxyserver
$HADOOP_HOME/bin/mapred --daemon stop historyserver