pathmunge () {
        if ! echo $PATH | egrep -q "(^|:)$1($|:)" ; then
           if [ "$2" = "after" ] ; then
              PATH=$PATH:$1
           else
              PATH=$1:$PATH
           fi
        fi
}
export JAVA_HOME=/Library/Java/JavaVirtualMachines/amazon-corretto-8.jdk/Contents/Home
export HADOOP_HOME=`pwd`/opt/hadoop-3.2.1
export SPARK_HOME=`pwd`/opt/spark-2.4.4-bin-without-hadoop
export DOTNET_WORKER_DIR=`pwd`/opt/Microsoft.Spark.Worker-0.7.0

pathmunge $SPARK_HOME/bin after
pathmunge $HADOOP_HOME/bin after

# Don't use 256color terminal with jline
export TERM=xterm-color
