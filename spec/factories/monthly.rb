# frozen_string_literal: true

FactoryBot.define do
  factory :monthly do
    start_at { '2020-04-01' }
    finish_at { '2020-04-30' }
    user
    created_at { Faker::Time.between(from: DateTime.now - 2, to: DateTime.now) }
  end
end
