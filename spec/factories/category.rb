FactoryBot.define do
  factory :category do
    name {"交通費"}
    user
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now)}
  end
end