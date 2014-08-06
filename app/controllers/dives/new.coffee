NewDiveController = Ember.ObjectController.extend
  actions:
    close: ->
      @send 'reset'
      @transitionTo 'dives'

    reset: ->
      @setProperties {
        bottomTime: '', buddy: '', date: '', endingPSI: '', location: '',
        maxDepth: '', nitrox: '', notes: '', temperature: '', time: '', title: ''
      }

    save:  ->
      data = @getProperties 'bottomTime', 'buddy', 'date', 'startingPSI',
                            'endingPSI', 'location', 'maxDepth', 'nitrox',
                            'notes', 'temperature', 'time', 'title'

      dive = @store.createRecord 'dive', data
      dive.save()
      @send 'close'

`export default NewDiveController`
