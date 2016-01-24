json.fname @user.fname
json.lname @user.lname
json.email @user.email
json.id @user.id
json.hospital @user.emer_hospital
json.meeting @user.emer_meeting_area


json.maps @user.maps do |map|
  json.id map.id
  json.name map.name
  json.city_id map.city_id
  json.map_type map.map_type
  json.map_url map.map_url
end
