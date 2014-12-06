# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

case Rails.env
when "development"
   
Story.create({
  body: "My name is Jessica and I am a techgirl superstar.
       My super power is writing LUA generators"
	})

Story.create({
  body: "I am from Melbourne and my super power is protecticing the city from plus-one errors!"
	})

Story.create({
	body: "I am 12 years old and I am a white hat hacker. Social justice through code!"
	})

Story.create({
	body: "Yesterday I deployed my first ever app to heroku and shared the code on sourceforge!
 I am officially now an open source developer!"
	})

end

