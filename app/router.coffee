`import Ember from 'ember'`

Router = Ember.Router.extend location: LoggerheadENV.locationType
Router.map ->
  this.resource 'divers', ->
    this.route 'new'
    this.resource 'diver', path: '/:diver_id', ->
      this.route 'edit'

  this.resource 'dives', ->
    this.route 'new'
    this.resource 'dive', path: '/:dive_id', ->
      this.route 'edit'

`export default Router`
