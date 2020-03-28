# frozen_string_literal: true

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :budget, dependent: :destroy
  has_many :categories, dependent: :destroy
  has_many :posts, dependent: :destroy
  has_many :tags, dependent: :destroy
  has_many :monthlies, dependent: :destroy

  with_options presence: true do
    validates :name
    validates :email
    validates :password
  end

  def self.guest
    find_or_create_by(email: "test@com") do |user|
      user.password = Rails.application.secrets.test_account_pass
    end
  end

end
