10.times do User.create!(
  email: Faker::Internet.email,
  password: Faker::Internet.password
)
end

me = User.create!(
  email: "jeroen.masschelein@gmail.com",
  password: "password"
)


users = User.all

100.times do Item.create!(
  name: Faker::ChuckNorris.fact,
  user: users.sample
)
end

puts "Seed finished."
puts "#{User.count} users created."
puts "#{Item.count} items created."