NewDiveController = Ember.ObjectController.extend
  actions:
    close: -> @transitionTo 'dives'
    save:  ->
      data = @getProperties 'title', 'location', 'date', 'buddy', 'notes'
      dive = @store.createRecord 'dive', data
      dive.save()
      @transitionTo 'dives'

`export default NewDiveController`
