# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Step.all.destroy_all
Badge.all.destroy_all
Record.all.destroy_all
Scenario.all.destroy_all
User.all.destroy_all

u1 = User.create!(email: "test@test.com", password: "123456",
                  first_name: "fang",
                  last_name: "b"
                  )
puts 'users created'
s1 = Scenario.create!(
  title: '学会打车',
  description: '【滴滴出行App】您可以通过手机随时随地呼叫或预约出租车，快车，专车等。
  关键步骤包括：输入上车地点和目的地、选择网约车类型以及呼叫。司机接单后，您可以打电话联系司机师傅，明确上车地点。'
)
s1.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/taxi@3x.png"), filename: SecureRandom.hex(20))
puts 'scenario 1 done'
s2 = Scenario.create!(
  title: '查询公交',
  description: '【高德地图App】您可以通过地图软件查找最快捷的出行路线。
  关键步骤包括：输入“我的位置”以及目的地、选择出行方式。'
)
s2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/bus@3x.png"), filename: SecureRandom.hex(20))
puts 'scenario 2 done'
s3 = Scenario.create!(
  title: '视频通话',
  description: '【微信App】您可以通过微信群，随时随地与家人进行语音或视频通话。
  关键步骤包括：打开微信群语音或视频通话、选择通话对象。'
)
s3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/call@3x.png"), filename: SecureRandom.hex(20))

puts 'scenario 3 done'

s4 = Scenario.create!(
  title: '网上购物',
  description: '内容准备中......'
)
s4.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/grocery@3x.png"), filename: SecureRandom.hex(20))

s5 = Scenario.create!(
  title: '收养宠物',
  description: '内容准备中......'
)
s5.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/cat@3x.png"), filename: SecureRandom.hex(20))

# groupchat demo seeds
step1 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s3
)
step1.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Group%20call.mp4"), filename: SecureRandom.hex(20))
puts 'step 1 done'

# groupchat walkthrough seeds
step2 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s3
)
step2.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-1.png"), filename: SecureRandom.hex(20))
puts 'step 2 done'

step3 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s3
)
step3.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-2.png"), filename: SecureRandom.hex(20))
puts 'step 3 done'

step4 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s3
)
step4.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-3.png"), filename: SecureRandom.hex(20))
puts 'step 4 done'

step5 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s3
)
step5.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-4.png"), filename: SecureRandom.hex(20))
puts 'step 5 done'

step6 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s3
)
step6.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-5.png"), filename: SecureRandom.hex(20))
puts 'step 6 done'

step7 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s3
)
step7.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-6.png"), filename: SecureRandom.hex(20))
puts 'step 7 done'

step8 = Step.create!(
  category: 2,
  priority: 7,
  scenario: s3
)
step8.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.png"), filename: SecureRandom.hex(20))
puts 'step 8 done'

# groupchat practice seeds
step9 = Step.create!(
  category: 3,
  priority: 1,
  scenario: s3
)
step9.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/groupcall-quiz%201.png"), filename: SecureRandom.hex(20))
puts 'step 9 done'

step10 = Step.create!(
  category: 3,
  priority: 2,
  scenario: s3
)
step10.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/groupcall-quiz%202.png"), filename: SecureRandom.hex(20))
puts 'step 10 done'

# map demo seeds
step11 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s2
)
step11.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/gaode-map.mp4"), filename: SecureRandom.hex(20))
puts 'step 11 done'

#map walkthrough seeds
step12 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s2
)
step12.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-1.JPG"), filename: SecureRandom.hex(20))
puts 'step 12 done'

step13 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s2
)
step13.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-2.JPG"), filename: SecureRandom.hex(20))
puts 'step 13 done'

step14 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s2
)
step14.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-3.JPG"), filename: SecureRandom.hex(20))
puts 'step 14 done'

step15 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s2
)
step15.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-4.JPG"), filename: SecureRandom.hex(20))
puts 'step 15 done'

step16 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s2
)
step16.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-5.JPG"), filename: SecureRandom.hex(20))
puts 'step 16 done'

step17 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s2
)
step17.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Map-6.JPG"), filename: SecureRandom.hex(20))
puts 'step 17 done'

# Gaode Map practice seeds
step18 = Step.create!(
  category: 3,
  priority: 1,
  scenario: s2
)
step18.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/map-quiz%201.png"), filename: SecureRandom.hex(20))
puts 'step 18 done'

step19 = Step.create!(
  category: 3,
  priority: 2,
  scenario: s2
)
step19.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/map-quiz%202.png"), filename: SecureRandom.hex(20))
puts 'step 19 done'

step20 = Step.create!(
  category: 3,
  priority: 3,
  scenario: s2
)
step20.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/map-quiz%203.png"), filename: SecureRandom.hex(20))
puts 'step 20 done'

# didi demo seeds
step21 = Step.create!(
  category: 1,
  priority: 1,
  scenario: s1
)
step21.video.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/didi.mp4"), filename: SecureRandom.hex(20))
puts 'step 21 done'

# didi walkthrough seeds
step22 = Step.create!(
  category: 2,
  priority: 1,
  scenario: s1
)
step22.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 22 done'

step23 = Step.create!(
  category: 2,
  priority: 2,
  scenario: s1
)
step23.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 23 done'

step24 = Step.create!(
  category: 2,
  priority: 3,
  scenario: s1
)
step24.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 24 done'

step25 = Step.create!(
  category: 2,
  priority: 4,
  scenario: s1
)
step25.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 25 done'

step26 = Step.create!(
  category: 2,
  priority: 5,
  scenario: s1
)
step26.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 26 done'

step27 = Step.create!(
  category: 2,
  priority: 6,
  scenario: s1
)
step27.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 27 done'

step28 = Step.create!(
  category: 2,
  priority: 7,
  scenario: s1
)
step28.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/Groupcall-7.jpeg"), filename: SecureRandom.hex(20))
puts 'step 28 done'

# Didi Ride  practice seeds
step29 = Step.create!(
  category: 3,
  priority: 1,
  scenario: s1
)
step29.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/didi-quiz%201.png"), filename: SecureRandom.hex(20))
puts 'step 29 done'

step30 = Step.create!(
  category: 3,
  priority: 2,
  scenario: s1
)
step30.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/didi-quiz%202.png"), filename: SecureRandom.hex(20))
puts 'step 30 done'

step31 = Step.create!(
  category: 3,
  priority: 2,
  scenario: s1
)
step31.image.attach(io: open("http://q1xs0nzvt.bkt.clouddn.com/didi-quiz%203.png"), filename: SecureRandom.hex(20))
puts 'step 31 done'

puts "Created #{User.count} User"
puts "Created #{Scenario.count} scenarios"
puts "Created #{Step.count} steps"
