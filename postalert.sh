#!/bin/sh
#URL="http://127.0.0.1:13000/alerts"

curl -si -X POST -H "Content-Type: application/json" http://127.0.0.1:13000/alerts -d '
{
  "receiver": "webhookapi",
  "status": "firing",
  "alerts": [
    {
      "status": "firing",
      "labels": {
        "alertname": "apiShipperPyt",
        "alerttype": "apipython",
        "endpoint": "/api/order/get",
        "instance": "103.147.186.65:15001",
        "job": "api-shipper",
        "severity": "warning",
        "status_code": "200"
      },
      "annotations": {
        "description": "api responsed slower than 0.5s  value=3.901068210601807",
        "summary": "Shipper-api responsed from instance 103.147.186.65:15001"
      },
      "startsAt": "2021-06-14T09:16:32.337Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://cooky-monitor:9090/graph?g0.expr=rate%28request_latency_seconds_sum%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%2F+rate%28request_latency_seconds_count%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%3E+0.5&g0.tab=1",
      "fingerprint": "1119847320c979f0"
    },
    {
      "status": "firing",
      "labels": {
        "alertname": "apiShipperPyt",
        "alerttype": "apipython",
        "endpoint": "/api/order/status/picked",
        "instance": "103.147.186.65:15001",
        "job": "api-shipper",
        "severity": "warning",
        "status_code": "200"
      },
      "annotations": {
        "description": "api responsed slower than 0.5s  value=0.8240288496017456",
        "summary": "Shipper-api responsed from instance103.147.186.65:15001"
      },
      "startsAt": "2021-06-14T09:16:32.337Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://cooky-monitor:9090/graph?g0.expr=rate%28request_latency_seconds_sum%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%2F+rate%28request_latency_seconds_count%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%3E+0.5&g0.tab=1",
      "fingerprint": "5c8a195d97fafe67"
    },
    {
      "status": "firing",
      "labels": {
        "alertname": "apiShipperPyt",
        "alerttype": "apipython",
        "endpoint": "/api/orders/get/working",
        "instance": "103.147.186.65:15001",
        "job": "api-shipper",
        "severity": "warning",
        "status_code": "200"
      },
      "annotations": {
        "description": "api responsed slower than 0.5s  value=4.0859365463256845",
        "summary": "Shipper-api responsed from instance 103.147.186.65:15001"
      },
      "startsAt": "2021-06-14T09:09:02.337Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://cooky-monitor:9090/graph?g0.expr=rate%28request_latency_seconds_sum%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%2F+rate%28request_latency_seconds_count%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%3E+0.5&g0.tab=1",
      "fingerprint": "de155a5ea767cbe5"
    },
    {
      "status": "firing",
      "labels": {
        "alertname": "apiShipperPyt",
        "alerttype": "apipython",
        "endpoint": "/api/order/get",
        "instance": "103.147.186.66:15001",
        "job": "api-shipper",
        "severity": "warning",
        "status_code": "200"
      },
      "annotations": {
        "description": "api responsed slower than 0.5s  value=4.477187395095825",
        "summary": "Shipper-api responsed from instance 103.147.186.66:15001"
      },
      "startsAt": "2021-06-14T09:14:32.337Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://cooky-monitor:9090/graph?g0.expr=rate%28request_latency_seconds_sum%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%2F+rate%28request_latency_seconds_count%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%3E+0.5&g0.tab=1",
      "fingerprint": "f803d785c707b8f1"
    },
    {
      "status": "firing",
      "labels": {
        "alertname": "apiShipperPyt",
        "alerttype": "apipython",
        "endpoint": "/api/order/status/completed",
        "instance": "103.147.186.66:15001",
        "job": "api-shipper",
        "severity": "warning",
        "status_code": "200"
      },
      "annotations": {
        "description": "api responsed slower than 0.5s  value=3.7852826118469243",
        "summary": "Shipper-api responsed from instance 103.147.186.66:15001"
      },
      "startsAt": "2021-06-14T09:17:17.337Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://cooky-monitor:9090/graph?g0.expr=rate%28request_latency_seconds_sum%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%2F+rate%28request_latency_seconds_count%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%3E+0.5&g0.tab=1",
      "fingerprint": "f6753f8ade1513b3"
    },
    {
      "status": "firing",
      "labels": {
        "alertname": "apiShipperPyt",
        "alerttype": "apipython",
        "endpoint": "/api/orders/get/done",
        "instance": "103.147.186.66:15001",
        "job": "api-shipper",
        "severity": "warning",
        "status_code": "200"
      },
      "annotations": {
        "description": "api responsed slower than 0.5s  value=5.858164548873902",
        "summary": "Shipper-api responsed from instance 103.147.186.66:15001"
      },
      "startsAt": "2021-06-14T09:12:32.337Z",
      "endsAt": "0001-01-01T00:00:00Z",
      "generatorURL": "http://cooky-monitor:9090/graph?g0.expr=rate%28request_latency_seconds_sum%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%2F+rate%28request_latency_seconds_count%7Bjob%3D%22api-shipper%22%7D%5B5m%5D%29+%3E+0.5&g0.tab=1",
      "fingerprint": "52efe5cd09539ea9"
    }
  ],
  "groupLabels": {
    "alertname": "apiShipperPyt"
  },
  "commonLabels": {
    "alertname": "apiShipperPyt",
    "alerttype": "apipython",
    "job": "api-shipper",
    "severity": "warning",
    "status_code": "200"
  },
  "commonAnnotations": {},
  "externalURL": "http://cooky-monitor:9093",
  "version": "4",
  "groupKey": "{}/{alerttype=\"apipython\"}:{alertname=\"apiShipperPyt\"}",
  "truncatedAlerts": 0
}
'