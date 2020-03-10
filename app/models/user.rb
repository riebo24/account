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

end
