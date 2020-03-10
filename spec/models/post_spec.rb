require "rails_helper"

describe Post do
  describe "get #create" do
    it "is valid with a p_price, memo, date, user, category" do
      post = build(:post)
      post.valid?
      expect(post).to be_valid
    end

    it "is invalid without a p_price" do
      post = build(:post, p_price: "")
      post.valid?
      expect(post.errors[:p_price]).to include("can't be blank")
    end

    it "is invalid without a date" do
      post = build(:post, date: "")
      post.valid?
      expect(post.errors[:date]).to include("can't be blank")
    end 

    it "is valid a memo with 30letter" do
      post = build(:post)
      post.valid?
      expect(post).to be_valid
    end
    
    it "is invalid over 30letter" do
      post = build(:post, memo: "今週末のパーティー用にスーパーでお肉とじゃがいもを買いました。")
      post.valid?
      expect(post).to be_valid
    end

  end

  
  describe "get #update" do

  end
end