# frozen_string_literal: true

class PostTag < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :tag, optional: true
end
