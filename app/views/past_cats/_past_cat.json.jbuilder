# json.extract! past_cat, :id, :cat_id, :whereabouts, :created_at, :updated_at
# json.url past_cat_url(past_cat, format: :json)
json.extract! past_cat, :id, :cat_id, :whereabouts, :created_at, :updated_at
json.kind past_cat.cat.kind
json.sex past_cat.cat.sex
json.age past_cat.cat.age
json.size past_cat.cat.size
json.color past_cat.cat.color
json.place past_cat.cat.place
json.limit past_cat.cat.limit
json.detail past_cat.cat.detail
json.image past_cat.cat.image
