json.array!(@members) do |member|
  json.extract! member, :id, :userid, :pass, :name, :mail, :memo, :admin
  json.url member_url(member, format: :json)
end
