json.array!(@employees) do |employee|
  json.extract! employee, :id, :username, :password, :comments, :person_id, :deleted
  json.url employee_url(employee, format: :json)
end
