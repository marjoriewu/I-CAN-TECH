# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Step.all.destroy_all
Record.all.destroy_all
Scenario.all.destroy_all
User.all.destroy_all

u1 = User.create!(email: "test@test.com", password: "123456",
                  first_name: "fang",
                  last_name: "b"
                  )

s1 = Scenario.create!(
  title: 'Find a taxi',
  description: 'Didi can help you to order a car to meet your friends.
                - Input your address & destination address
                - Choose the car type
                - Send the order, and wait for the diver to take your order.'
)
s1.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/taxi@3x.png"), filename: SecureRandom.hex(20))

s2 = Scenario.create!(
  title: 'Hop on the bus',
  description: 'Map can help you find your way to where you want to go.
                - Input your destination address
                - Choose  a transportation'
)
s2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/bus@3x.png"), filename: SecureRandom.hex(20))

s3 = Scenario.create!(
  title: 'Call your friends',
  description: 'You can talk with your family members with Wechat group call.
                - Inside a group, open  the call
                - Select members you want to talk with'
)
s3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/call@3x.png"), filename: SecureRandom.hex(20))

# groupchat demo seeds
step1 = Step.create!(
  category: 1,
  priority: 1,
  instruction: 'Demo',
  scenario: s1
)
step1.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupchat.mp4"), filename: SecureRandom.hex(20))

# groupchat walkthrough seeds
step2 = Step.create!(
  category: 2,
  priority: 1,
  instruction: 'Walktrough - long press this button',
  scenario: s1
)
step2.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-1.jpeg"), filename: SecureRandom.hex(20))

step3 = Step.create!(
  category: 2,
  priority: 2,
  instruction: 'Walkthrough - long press this button again',
  scenario: s1
)
step3.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-2.jpeg"), filename: SecureRandom.hex(20))

step4 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Walkthrough - tap to continue',
  scenario: s1
)
step4.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-3.jpeg"), filename: SecureRandom.hex(20))

step5 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Walkthrough - tap to continue',
  scenario: s1
)
step5.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-4.jpeg"), filename: SecureRandom.hex(20))

step6 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Walkthrough - tap to continue',
  scenario: s1
)
step6.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-5.jpeg"), filename: SecureRandom.hex(20))

step7 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Walkthrough - tap to continue',
  scenario: s1
)
step7.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-6.jpeg"), filename: SecureRandom.hex(20))

step8 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Walkthrough - tap to continue',
  scenario: s1
)
step8.images.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

# groupchat practice seeds
step4 = Step.create!(
  category: 3,
  priority: 1,
  instruction: 'Practice - tap to continue again',
  scenario: s1
)

step5 = Step.create!(
  category: 3,
  priority: 2,
  instruction: 'Practice - End of practice',
  scenario: s1
)

puts "Created #{User.count} User"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"
