DivesController = Ember.ArrayController.extend
  sortProperties: ['date', 'time', 'title']
  sortAscending: false
  actions:
    edit: (dive) -> @transitionToRoute 'dive.edit', dive
    new: -> @transitionToRoute 'dives.new'

`export default DivesController`
