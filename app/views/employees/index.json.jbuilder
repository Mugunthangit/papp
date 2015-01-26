json.array!(@employees) do |employee|
  json.extract! employee, :id, :id, :parn_no, :name, :details
  json.url employee_url(employee, format: :json)
end
