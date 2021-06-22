import restify from 'restify';
import { default as DBG } from 'debug';
import * as support from './appsupport.mjs'
import { default as jsyaml} from 'js-yaml';
import {default as TeleBot } from 'node-telegram-bot-api';
import * as util from 'util';

const debug = DBG('alerts:debug');
const dbgerror = DBG('alerts:error');
var server = restify.createServer({name:"Telegram-web-hook ", version: "0.0.1"});
const groupid = "-1111111111111111111111111";
const token = '1111111111111111111111111111111';
const bot = new TeleBot(token, {polling: false});
server.use(restify.plugins.acceptParser(server.acceptable));
server.use(restify.plugins.queryParser());
server.use(restify.plugins.bodyParser());

server.use(restify.plugins.queryParser());
server.use(restify.plugins.bodyParser({mapParams: true}));
server.listen(process.env.PORT, "localhost", function(){
    console.log(process.env.DEBUG + "moa");
    debug(server.name + 'listening at ' + server.url);
    
});

process.on('uncaughtException', function(err){
    console.error("UNCAUGHT EXCEPTION - "+ (err.stack || err));
    process.exit(1);
});

process.on('unhandledRejection',(reason,p) => {
    console.error(`UNHANDLED PROMISE REJECTION: ${util.inspect(p)} reason: ${reason}`);
});

server.post('/alerts', async (req, res, next) =>{
    
    // var msg = support.parse_msg(req);
    // debug(msg);
    // await bot.sendMessage(groupid,msg);
    // res.send(msg);
    
    var alerts = req.body;
    try {
        for(var alert of alerts["alerts"]){
            var msg = support.parse_one_msg(alert);
            debug(msg);
            await bot.sendMessage(groupid,msg);
            
        }
        res.send("ok");

    } catch (err) {
        dbgerror(err);
        res.send(500, err);
        next(false);
    }
    
});
