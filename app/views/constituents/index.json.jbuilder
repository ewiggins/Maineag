json.array!(@constituents) do |constituent|
  json.extract! constituent, :id, :first_name, :last_name, :title, :district, :email, :phone_number
  json.url constituent_url(constituent, format: :json)
end
