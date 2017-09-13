require 'faker'

FactoryGirl.define do
  factory :thing do
    first_name {Faker::Name.name}
    last_name {Faker::Name.last_name}
  end
end
