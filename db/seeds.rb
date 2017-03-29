# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create( :email => 'test@example.com',
             :password => 'test@example.com' )


Info.create( :name => '快報資訊')
Info.create( :name => '求物資')
Info.create( :name => '求救')


Disaster.create( :name => 1,
                 :info_id => 1,
                 :user_id => 1 )