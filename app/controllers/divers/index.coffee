DiversIndexController = Ember.ArrayController.extend
  actions:
    show: (diver) -> @transitionToRoute 'diver', diver

`export default DiversIndexController`
