echo "Show YARN classpath and services"
echo -e '\n\thdmaster\n'
ssh localhost /hadoop/bin/yarn classpath
ssh localhost /java/bin/jps
echo -e '\n\thdslave1\n'
ssh localhost /hadoop/bin/yarn classpath
ssh hdslave1 /java/bin/jps
echo -e '\n\thdslave2\n'
ssh localhost /hadoop/bin/yarn classpath
ssh hdslave2 /java/bin/jps