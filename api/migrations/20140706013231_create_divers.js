'use strict';

exports.up = function(knex, Promise) {
  return knex.schema.createTable('divers', function (table) {
    table.increments('id').primary()
    table.string('name')
    table.string('crypted_password')
  }).then(function () {
    return knex.schema.table('dives', function (table) {
      table.integer('diver_id').references('id').inTable('divers')
    })
  })
};

exports.down = function(knex, Promise) {
  return knex.schema.table('dives', function (table) {
    table.dropColumn('diver_id')
  }).then(function  (){
    return knex.schema.dropTable('divers')
  })
};
