# frozen_string_literal: true

require 'rails_helper'

describe Tag do
  describe 'get #create' do
    it 'is valid with a name' do
      tag = build(:tag)
      tag.valid?
      expect(tag).to be_valid
    end

    it 'is invalid without a name' do
      tag = build(:tag, name: '')
      tag.valid?
      expect(tag.errors[:name]).to include("can't be blank")
    end
  end

  describe 'get #update' do
    it 'is valid with a name' do
      tag = build(:tag)
      tag.valid?
      expect(tag).to be_valid
    end

    it 'is invalid without a name' do
      tag = build(:tag, name: '')
      tag.valid?
      expect(tag.errors[:name]).to include("can't be blank")
    end
  end
end
