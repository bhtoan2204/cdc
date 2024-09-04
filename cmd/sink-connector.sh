#!/bin/bash

curl -i -X POST -H "Accept:application/json" -H  "Content-Type:application/json" http://localhost:8083/connectors/ -d '{
  "name": "elasticsearch-sink",
  "config": {
    "connector.class": "io.confluent.connect.elasticsearch.ElasticsearchSinkConnector",
    "tasks.max": "1",
    "topics": "my-app-connector.mydb.product",
    "connection.url": "http://elasticsearch:9200",
    "key.ignore": "true",
    "schema.ignore": "true",
    "type.name": "_doc"
  }
}'
