EditDiveView = Ember.View.extend
  click: (event) ->
    return unless $(event.target).hasClass 'modal'
    @get('controller').send 'close'

`export default EditDiveView`
