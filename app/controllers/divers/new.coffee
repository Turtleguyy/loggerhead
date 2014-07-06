NewDiverController = Ember.ObjectController.extend
  actions:
    close: -> @transitionTo 'divers'
    save:  ->
      data  = @getProperties 'name', 'certification'
      diver = @store.createRecord 'diver', data
      diver.save()
      @transitionTo 'divers'

`export default NewDiverController`
