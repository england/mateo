# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

activities = 100.times.map do
  Activity.create title: SecureRandom.hex, arpu: rand(10..30)
end

3000.times do |i|
  n = case i
  when 0...900 then 2
  when 900...1500 then 3
  when 1500...1800 then 4
  else 1
  end

  n.times { activities.sample.visitors.create medium: rand(0..3), user_id: i }
end
