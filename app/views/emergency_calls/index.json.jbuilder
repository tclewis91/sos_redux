json.array!(@emergency_calls) do |emergency_call|
  json.extract! emergency_call, :id, :phone, :phone_number
  json.url emergency_call_url(emergency_call, format: :json)
end
