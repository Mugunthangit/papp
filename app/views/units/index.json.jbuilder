json.array!(@units) do |unit|
  json.extract! unit, :id, :nlc_id, :unit_name
  json.url unit_url(unit, format: :json)
end
