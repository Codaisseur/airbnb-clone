json.array!(@office_spaces) do |office_space|
  json.extract! office_space, :id, :name, :address, :zip, :city, :description
  json.url office_space_url(office_space, format: :json)
end
