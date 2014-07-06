DivesController = Ember.ArrayController.extend
  sortProperties: ['date', 'time', 'title']
  sortAscending: false
  actions:
    edit: (dive) -> @transitionToRoute 'dive.edit', dive
    sort: (properties) ->
      if properties is @get 'currentSortProperties'
        @set 'sortAscending', not @get 'sortAscending'

      else
        @set 'currentSortProperties', properties
        @set 'sortProperties', properties

  currentSortProperties: ['date', 'time', 'title']

`export default DivesController`
