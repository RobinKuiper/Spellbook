Meteor.startup ->
  Migrations.migrateTo(16)