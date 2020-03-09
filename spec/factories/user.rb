FactoryBot.define do
  # テストで使用するインスタンス（テストをパスする）をあらかじめ作成
  factory :user do
    name              {"テスト太郎"}
    email                 {"aaa@gmail.com"}
    password              {"11111111"}
    password_confirmation {"11111111"}
  end
end