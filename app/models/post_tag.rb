class PostTag < ApplicationRecord
  belongs_to :posts, optional: true
  belongs_to :tags, optional: true
  belongs_to :user, optional: true
end
