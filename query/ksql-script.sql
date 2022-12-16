-- Connect to ksql container CLI
docker exec -it ksqldb-cli ksql http://ksqldb-server:8088

-- Create connector to postgres
CREATE SOURCE CONNECTOR jdbc_connector WITH (
  'connector.class'          = 'io.confluent.connect.jdbc.JdbcSourceConnector',
  'connection.url'           = 'jdbc:postgresql://postgres:5432/postgres',
  'connection.user'          = 'postgres',
  'connection.password'      = 'password',
  'topic.prefix'             = 'jdbc_',
  'table.whitelist'          = 'mahasiswa',
  'mode'                     = 'incrementing',
  'numeric.mapping'          = 'best_fit',  
  'incrementing.column.name' = 'id',
  'key'                      = 'id',
  'key.converter'            = 'org.apache.kafka.connect.converters.IntegerConverter');

-- Check connector
DESCRIBE CONNECTOR jdbc_connector;

-- Check topic
SHOW TOPICS;

-- Create stream table
CREATE STREAM stream_table (
  id INTEGER KEY,
  nama VARCHAR,
  alamat VARCHAR,
  umur INTEGER,
  jurusan VARCHAR,
  ipk DOUBLE
) WITH (kafka_topic='jdbc_mahasiswa', value_format='json', partitions=1);

-- Create materialized view
CREATE TABLE table_mahasiswa AS
  SELECT
    jurusan,
    AVG(ipk) AS rata_ipk
  FROM stream_table st
  GROUP BY jurusan
EMIT CHANGES;

-- Check materialized view
SELECT * FROM table_mahasiswa EMIT CHANGES;