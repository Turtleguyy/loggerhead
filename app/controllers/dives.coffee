DivesController = Ember.ArrayController.extend
  sortProperties: ['date', 'time', 'title']
  sortAscending: false
  actions:
    edit: (dive) -> @transitionToRoute 'dive.edit', dive
    new: -> @transitionToRoute 'dives.new'

  bottomTime: (->
    totalTime  = 0
    totalTime += dive.get 'bottomTime' for dive in @get 'model'
    totalTime
  ).property('@each.bottomTime')

`export default DivesController`
