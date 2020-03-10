require "rails_helper"

describe Category do
  describe "get #create" do
    it "is valid with a name" do
      category = build(:category)
      category.valid?
      expect(category).to be_valid
    end

    it "is invalid without a name" do
      category = build(:category, name: "")
      category.valid?
      expect(category.errors[:name]).to include("can't be blank")
    end
  end

  describe "get #update" do
    it "is valid with a name" do
      category = build(:category)
      category.valid?
      expect(category).to be_valid
    end

    it "is invalid without a name" do
      category = build(:category, name: "")
      category.valid?
      expect(category.errors[:name]).to include("can't be blank")
    end
  end
end