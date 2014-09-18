json.array!(@reds) do |red|
  json.extract! red, :id, :isp_id, :password, :wps_pin
  json.url red_url(red, format: :json)
end
