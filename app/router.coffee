`import Ember from 'ember'`

Router = Ember.Router.extend location: LoggerheadENV.locationType
Router.map ->
  this.resource 'dives', ->
    this.route 'new'
    this.resource 'dive', path: '/:dive_id'

`export default Router`
