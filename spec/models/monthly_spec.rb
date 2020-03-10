require "rails_helper"

describe Monthly do
  describe "get #create" do
    it "is valid with a start_at and finish_at" do
      monthly = build(:monthly)
      monthly.valid?
      expect(monthly).to be_valid
    end

    it "finish_cannot_be_before_start" do
      monthly = build(:monthly, start_at: "2020-05-01")
      monthly.valid?
      expect(monthly.errors[:start_at]).to include("start dayはfinish dayより先の日付を設定してください")
    end

  end

  describe "get #update" do
    it "is valid with a start_at and finish_at" do
      monthly = build(:monthly)
      monthly.valid?
      expect(monthly).to be_valid
    end

    it "finish_cannot_be_before_start" do
      monthly = build(:monthly, start_at: "2020-05-01")
      monthly.valid?
      expect(monthly.errors[:start_at]).to include("start dayはfinish dayより先の日付を設定してください")
    end
  end
end