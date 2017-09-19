# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

include Faker

5.times do
  User.create!(
  username: Faker::Name.name,
  email: Faker::Internet.email,
  password: Faker::Internet.password
  )
end

users = User.all

10.times do
    RegisteredApplication.create!(
    user: users.sample,
    name: Faker::Name.name,
    url: Faker::Internet.url
  )
end

registered_applications = RegisteredApplication.all

# sample event
events_array = ['click', 'view', 'download', 'upload', 'register']

40.times do
  Event.create!(
    registered_application: registered_applications.sample,
    name: events_array.sample
  )
end

puts "Seeds finished"
puts "#{User.count} users created"
puts "#{RegisteredApplication.count} apps created"
puts "#{Event.count} events created"