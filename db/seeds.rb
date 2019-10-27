require_relative '../config/environment.rb'

User.destroy_all
School.destroy_all
Course.destroy_all
Review.destroy_all

10.times do |count|
    User.create(username: "user#{count + 1}", password: Faker::Team.creature, logged_in: false)
end

schools = ["Flatiron School","Makers Academy","General Assembly"]
School.create(name: schools[0])
School.create(name: schools[1])
School.create(name: schools[2])

courses =["Software Engineering","Data Science", "Cybersecurity", "User Experience Design"]
Course.create(topic: courses[0], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))
Course.create(topic: courses[1], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))
Course.create(topic: courses[2], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))
Course.create(topic: courses[3], is_online: Faker::Boolean.boolean(true_ratio: 0.5), is_in_person: Faker::Boolean.boolean(true_ratio: 0.5))

100.times do |count|
    Review.create(school: School.all.sample, course: Course.all.sample, user: User.all.sample, rating: rand(1..5), content: Faker::Hacker.say_something_smart)
end


