var express     = require('express'),
    morgan      = require('morgan'),
    bodyParser  = require('body-parser'),
    child       = require("child_process"),
    app         = express();


function gitPull(){
  child.exec('cd /ngLazy-demo && git pull origin master',  {detached: true});
}

app.use(bodyParser());
app.use(morgan({ format: 'dev', immediate: true }));

app.post('/', function(req, res){
  console.log(req.body);
  req.body.action === "push" || req.body.zen && gitPull();
  res.send(204);
});

app.listen(8001);
console.log('Server running at http://127.0.0.1:8001/');


