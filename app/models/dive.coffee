Dive = DS.Model.extend
  bottomTime: DS.attr 'string'
  buddy: DS.attr 'string'
  date: DS.attr 'string'
  endingPSI: DS.attr 'string'
  location: DS.attr 'string'
  maxDepth: DS.attr 'string'
  nitrox: DS.attr 'string'
  notes: DS.attr 'string'
  temperature: DS.attr 'string'
  time: DS.attr 'string'
  title: DS.attr 'string'

  diver: DS.belongsTo 'diver'

`export default Dive`
