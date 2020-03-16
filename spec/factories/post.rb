# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    p_price { '1298' }
    memo { '今週末のパーティー用にスーパーでお肉とじゃがいもを買いました' }
    date { '2020-03-01' }
    user
    category
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
