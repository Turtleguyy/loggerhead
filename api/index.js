var koa = require('koa')
var Router = require('koa-router')
var mount = require('koa-mount')
var serve = require('koa-static')
var bodyParser = require('koa-bodyparser')

var knex = require('knex')

var environment = process.env.NODE_ENV || 'development'
var db = knex(require('./dbconfig')[environment])

module.exports = buildApp;

function buildApp() {
  var app = koa()
  app.use(bodyParser())
  app.use(serve('dist'))
  app.use(mount('/api', routes()))
  return app
}

var port = Number(process.env.PORT || 3000)

if (require.main === module) {
  var app = buildApp()
  app.listen(port)
  console.log('Loggerhead API running on port ' + port)
}

function routes () {
  var map = new Router()
  // List dives
  map.get('/dives', function *(){
    var diverId = 1
    var dives = yield db('dives').select().where({diver_id: diverId})
    this.body = {
      dives: dives
    }
  })

  // Create dive
  map.post('/dives', function *() {
    var diveParams = this.request.body
    var result = yield db('dives').insert(diveParams)
    this.body = result
  })

  // Get token
  map.post('/tokens', function *() {
    var params = this.request.body;
    params
  })

  return map.middleware()
}
