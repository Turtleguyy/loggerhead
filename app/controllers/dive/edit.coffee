EditDiveController = Ember.ObjectController.extend
  actions:
    close: -> @transitionTo 'dives'
    save:  ->
      @get('model').save()
      @send 'close'

    delete: ->
      dive = @get 'model'
      dive.deleteRecord()
      dive.save()
      @send 'close'

`export default EditDiveController`
