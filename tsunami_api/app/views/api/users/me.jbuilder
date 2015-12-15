json.fname @user.fname

json.maps @user.maps do |map|
  json.name map.name
  json.city_id map.city_id
  json.map_type map.map_type
end
