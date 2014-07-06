Diver = DS.Model.extend
  name: DS.attr 'string'

  dives: DS.hasMany 'dive'

`export default Diver`
