curl -si -X POST -H "Content-Type: application/json" http://127.0.0.1:13000/alerts -d '
{
   "receiver":"webhook",
   "status":"resolved",
   "alerts":[
      {
         "status":"resolved",
         "labels":{
            "alert_name":"WindowsHighNetworkThroughputOut",
            "alert_type":"server",
            "instance":"210.211.122.52:9183",
            "severity":"warning"
         },
         "annotations":{
            "description":"High network traffic (> 100 Mbps Mbps)\n  VALUE = 100.68293471563429\n  LABELS = map[instance:210.211.122.52:9183]",
            "summary":"Host unusual network throughput out (instance 210.211.122.52:9183)"
         },
         "startsAt":"2021-06-21T18:35:26.963Z",
         "endsAt":"2021-06-21T18:37:56.963Z",
         "generatorURL":"http://cooky-monitor:9090/graph?g0.expr=sum+by%28instance%29+%28rate%28windows_net_bytes_sent_total%5B2m%5D%29%29+%2A+8+%2F+1024+%2F+1024+%3E+100&g0.tab=1",
         "fingerprint":"0b016e9fa49b8806"
      }
   ],
   "groupLabels":{
      "alertname":"WindowsHighNetworkThroughputOut"
   },
   "commonLabels":{
      "alertname":"WindowsHighNetworkThroughputOut",
      "alerttype":"server",
      "instance":"210.211.122.52:9183",
      "severity":"warning"
   },
   "commonAnnotations":{
      "description":"High network traffic (> 100 Mbps Mbps)\n  VALUE = 100.68293471563429\n  LABELS = map[instance:210.211.122.52:9183]",
      "summary":"Host unusual network throughput out (instance 210.211.122.52:9183)"
   },
   "externalURL":"http://cooky-monitor:9093",
   "version":"4",
   "groupKey":"{}/{alerttype=\"server\"}:{alertname=\"WindowsHighNetworkThroughputOut\"}",
   "truncatedAlerts":0
}
'