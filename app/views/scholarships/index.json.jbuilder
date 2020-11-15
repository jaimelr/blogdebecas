json.array! @scholarships do |scholarship|
  json.id scholarship.id
  json.title scholarship.title
  json.description scholarship.description
  json.start scholarship.start
  json.end scholarship.end
  json.source scholarship.source
  json.benefits scholarship.benefits
  json.requirements scholarship.requirements
  json.category_id scholarship.category_id
  json.status scholarship.status
end
