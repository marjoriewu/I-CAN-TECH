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
  instruction: 'Wechat Group Call Demo',
  scenario: s3
)
step1.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Group%20call.mp4"), filename: SecureRandom.hex(20))

# groupchat walkthrough seeds
step2 = Step.create!(
  category: 2,
  priority: 1,
  instruction: 'Wechat Walktrough - page 1',
  scenario: s3
)
step2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-1.png"), filename: SecureRandom.hex(20))

step3 = Step.create!(
  category: 2,
  priority: 2,
  instruction: 'Wechat Walkthrough - page 2',
  scenario: s3
)
step3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-2.png"), filename: SecureRandom.hex(20))

step4 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Wechat Walkthrough - page 3',
  scenario: s3
)
step4.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-3.png"), filename: SecureRandom.hex(20))

step5 = Step.create!(
  category: 2,
  priority: 4,
  instruction: 'Wechat Walkthrough - page 4',
  scenario: s3
)
step5.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-4.png"), filename: SecureRandom.hex(20))

step6 = Step.create!(
  category: 2,
  priority: 5,
  instruction: 'Wechat Walkthrough - page 5',
  scenario: s3
)
step6.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-5.png"), filename: SecureRandom.hex(20))

step7 = Step.create!(
  category: 2,
  priority: 6,
  instruction: 'Wechat Walkthrough - page 6',
  scenario: s3
)
step7.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-6.png"), filename: SecureRandom.hex(20))

step8 = Step.create!(
  category: 2,
  priority: 7,
  instruction: 'Wechat Walkthrough - page 7',
  scenario: s3
)
step8.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.png"), filename: SecureRandom.hex(20))

# groupchat practice seeds
step9 = Step.create!(
  category: 3,
  priority: 1,
  instruction: 'Wechat Practice - Start of Practice',
  scenario: s3
)

step10 = Step.create!(
  category: 3,
  priority: 2,
  instruction: 'Wechat Practice - End of practice',
  scenario: s3
)

# map demo seeds
step11 = Step.create!(
  category: 1,
  priority: 1,
  instruction: 'GaoDe Map Demo',
  scenario: s2
)
step11.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map.mp4"), filename: SecureRandom.hex(20))

#map walkthrough seeds
step12 = Step.create!(
  category: 2,
  priority: 1,
  instruction: 'GaoDe Walkthrough - page 1',
  scenario: s2
)
step12.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-1.JPG"), filename: SecureRandom.hex(20))

step13 = Step.create!(
  category: 2,
  priority: 2,
  instruction: 'GaoDe Walkthrough - page 2',
  scenario: s2
)
step13.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-2.JPG"), filename: SecureRandom.hex(20))

step14 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'GaoDe Walkthrough - page 3',
  scenario: s2
)
step14.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-3.JPG"), filename: SecureRandom.hex(20))

step15 = Step.create!(
  category: 2,
  priority: 4,
  instruction: 'GaoDe Walkthrough - page 4',
  scenario: s2
)
step15.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-4.JPG"), filename: SecureRandom.hex(20))

step16 = Step.create!(
  category: 2,
  priority: 5,
  instruction: 'GaoDe Walkthrough - page 5',
  scenario: s2
)
step16.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-5.JPG"), filename: SecureRandom.hex(20))

step17 = Step.create!(
  category: 2,
  priority: 6,
  instruction: 'GaoDe Walkthrough - page 6',
  scenario: s2
)
step17.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-6.JPG"), filename: SecureRandom.hex(20))

# Gaode Map practice seeds
step18 = Step.create!(
  category: 3,
  priority: 1,
  instruction: 'GaoDe Practice - Start of Practice',
  scenario: s2
)

step19 = Step.create!(
  category: 3,
  priority: 2,
  instruction: 'GaoDe Practice - End of practice',
  scenario: s2
)

# didi demo seeds
step20 = Step.create!(
  category: 1,
  priority: 1,
  instruction: 'Didi Ride Demo',
  scenario: s1
)
step20.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Didi.mp4"), filename: SecureRandom.hex(20))

# didi walkthrough seeds
step21 = Step.create!(
  category: 2,
  priority: 1,
  instruction: 'Didi Ride Walkthrough - page 1',
  scenario: s1
)
step21.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

step22 = Step.create!(
  category: 2,
  priority: 2,
  instruction: 'Didi Ride Walkthrough - page 2',
  scenario: s1
)
step22.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

step23 = Step.create!(
  category: 2,
  priority: 3,
  instruction: 'Didi Ride Walkthrough - page 3',
  scenario: s1
)
step23.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

step24 = Step.create!(
  category: 2,
  priority: 4,
  instruction: 'Didi Ride Walkthrough - page 4',
  scenario: s1
)
step24.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

step25 = Step.create!(
  category: 2,
  priority: 5,
  instruction: 'Didi Ride Walkthrough - page 5',
  scenario: s1
)
step25.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))


step26 = Step.create!(
  category: 2,
  priority: 6,
  instruction: 'Didi Ride Walkthrough - page 6',
  scenario: s1
)
step26.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

step27 = Step.create!(
  category: 2,
  priority: 7,
  instruction: 'Didi Ride Walkthrough - page 7',
  scenario: s1
)
step27.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))

# Didi Ride  practice seeds
step28 = Step.create!(
  category: 3,
  priority: 1,
  instruction: 'Didi Ride Practice - Start of Practice',
  scenario: s1
)

step29 = Step.create!(
  category: 3,
  priority: 2,
  instruction: 'Didi Ride Practice - End of practice',
  scenario: s1
)



puts "Created #{User.count} User"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"
