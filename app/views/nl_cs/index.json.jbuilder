json.array!(@nlcs) do |nlc|
  json.extract! nlc, :id, :nlc_no
  json.url nlc_url(nlc, format: :json)
end
