json.array!(@contributions) do |contribution|
  json.extract! contribution, :id, :id, :type
  json.url contribution_url(contribution, format: :json)
end
