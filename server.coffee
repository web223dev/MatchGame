express = require 'express'
routes = require './src/routes'
app = express()

# Server static files
app.use(express.static(__dirname + '/public'));

# Routes
routes app

# PORT
port = process.env.PORT or 3000

# Listen
server = app.listen port, ->

  host = server.address().address
  port = server.address().port

  console.log('Example app listening at http://%s:%s', host, port)

