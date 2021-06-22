

export  function parse_msg(req) {
    
    var msg = "";
    var alerts = req.body;
    
    for (var alert of alerts["alerts"]) {

        msg +=`*[${alert["status"].toUpperCase()}] ${alert["labels"]["alertname"]}*\n`;

        for (var key in alert["labels"]) {
              
                msg = msg + `${key} : ${alert["labels"][key]}` + '\n';
        }

        for(var key in alert["annotations"]){
            msg += `${key} : ${alert["annotations"][key]}\n`;
        }
    }

    
    return msg.replace(/\_/g,"");

}

export  function parse_one_msg(alert) {
    
    var msg = "";
    msg +=`[${alert["status"].toUpperCase()}] ${alert["labels"]["alertname"]}\n`;
        for (var key in alert["labels"]) {
              
                msg = msg + `${key} : ${alert["labels"][key]}` + '\n';
        }

        for(var key in alert["annotations"]){
            msg += `${key} : ${alert["annotations"][key]}\n`;
        }
   
    return msg.replace(/\_/g,"");

}
