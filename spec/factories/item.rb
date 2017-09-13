require 'faker'

FactoryGirl.define do
  factory :item do
    name {Faker::Name.name}
    description {Faker::Name.last_name}
    image_url {Faker::LoremPixel.image}
  end
end
