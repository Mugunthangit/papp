json.array!(@transactions) do |transaction|
  json.extract! transaction, :id, :unit_id, :employee_id, :contribution_id, :cocontri, :subcontri, :date, :remark
  json.url transaction_url(transaction, format: :json)
end
