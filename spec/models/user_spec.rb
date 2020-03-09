# rails helperを読み込み、共通の設定を有効にする
require "rails_helper"

describe User do 
# createアクションについてのテストコード
  describe "#create" do 
    it "is valid with a name, email, password, password_confirmation" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "is invalid without name" do
      user = build(:user, name: "")
      # .valid:変数userが有効か確認
      user.valid?
      # .errors:エラー原因を確認するメソッド
      # include：予測される結果の中に、引数の文字列が含まれているか確認。
      expect(user.errors[:name]).to include("can't be blank")
    end

    it "is invalid without email" do
      user = build(:user, email: "")
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
    end

    it "is invalid without password" do
      user = build(:user, password: "")
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
    end

    it "is invalid without password_confirmation" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("doesn't match Password")
    end
  end 
end