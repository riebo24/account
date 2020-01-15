class PostTag < ApplicationRecord
  belongs_to :posts
  belongs_to :tags
  belongs_to :user
end
