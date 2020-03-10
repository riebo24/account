FactoryBot.define do
  factory :tag do
    name {"無駄遣い"}
    user
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now)}
  end
end