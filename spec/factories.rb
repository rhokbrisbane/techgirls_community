FactoryGirl.define do
  factory :super_hero do
    name { Faker::Name.first_name }
    super_power { Faker::Lorem.word }
    postcode "4000"
    age '15'
    year_at_school '9'
    email { Faker::Internet.email }
    phone '90994242'
    archetype 'artist'
  end

  factory :story do
    body { Faker::Lorem.paragraph } 
    super_hero
  end
end
