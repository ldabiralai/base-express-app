express = require('express')
bodyParser = require('body-parser')
path = require('path')
morgan = require('morgan')

app = express()

app.set "port", 5000
app.set "views", path.join(__dirname, "views")
app.set "view engine", "toffee"
app.use bodyParser.urlencoded({ extended: true })
app.use bodyParser.json()
app.use morgan("dev")
app.use express.static(path.join(__dirname, "public"))

routes = require('./routes')(app)

app.get "/", routes.home

app.listen app.get("port"), ->
  console.log "Listening on port #{app.get("port")}"
