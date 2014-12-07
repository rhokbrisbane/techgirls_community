FactoryGirl.define do
  factory :story do
    body 'My story'
  end

  factory :super_hero do
    name { Faker::Name.first_name }
    super_power { Faker::Lorem.word }
    postcode "4000"
    age '15'
    year_at_school '9'
    email { Faker::Internet.email }
    phone '90994242'
  end
end
