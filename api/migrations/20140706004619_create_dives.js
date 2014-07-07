'use strict';

exports.up = function(knex, Promise) {
  return knex.schema.createTable('dives', function (table) {
    table.increments().primary()
    table.string('bottom_time')
    table.string('buddy')
    table.string('date')
    table.string('psi_at_start')
    table.string('psi_at_end')
    table.string('location')
    table.string('max_depth')
    table.string('site')
    table.string('water_temperature')
    table.string('weather')
    table.string('weight')
    table.string('notes')
    table.string('nitrox')
    table.string('time')
    table.timestamp('logged_at')
  })
};

exports.down = function(knex, Promise) {
  return knex.schema.dropTable('dives')
};
