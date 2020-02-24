json.array! @search_posts do |post|
  json.id post.id
  json.p_price post.p_price
  json.memo post.memo
  json.date post.date
  json.category_name post.category.name
end