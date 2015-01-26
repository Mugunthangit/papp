json.array!(@employees) do |employee|
  json.extract! employee, :id, :pran_no, :name, :details
  json.url employee_url(employee, format: :json)
end
