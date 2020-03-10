FactoryBot.define do
  # テストで使用するインスタンス（テストをパスする）をあらかじめ作成
  factory :user do
    name              {"テスト太郎"}
    # gem[Faker]を利用。複数のインスタンスを作成する際、異なるメールアドレスでuserを作成できる。
    sequence(:email) {Faker::Internet.email}
    password              {"11111111"}
    password_confirmation {"11111111"}
  end
end