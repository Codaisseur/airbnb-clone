json.array!(@reservations) do |reservation|
  json.extract! reservation, :id, :user_id, :office_space_id, :start_date, :end_date
  json.url reservation_url(reservation, format: :json)
end
