# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

t = Time.current
50.times do |n|
  name = Faker::Company.name
  date = Faker::Date.between(from:2.month.ago, to: 2.month.from_now)
  start_time_raw = t.beginning_of_day.since(n.to_i.hours)
  start_time = start_time_raw.strftime("%H:%M:%S")
  ending_time = start_time_raw.since(1.hours).strftime("%H:%M:%S")

  Task.create!(
    name: name,
    date: date,
    start_time: start_time,
    ending_time: ending_time
  )
end
