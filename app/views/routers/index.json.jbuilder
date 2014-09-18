json.array!(@routers) do |router|
  json.extract! router, :id, :red_id, :bssid, :essid, :comment, :public_ip, :port
  json.url router_url(router, format: :json)
end
