json.name @city.name
json.county @city.county
json.twitter @city.twitter
json.email @city.email
json.website1 @city.website1
json.website2 @city.website2
json.website3 @city.website3
json.mobile_app @city.mobile_app
json.facebook @city.facebook
json.station @city.station
json.maps @city.maps do |map|
  json.map_id map.id
  json.map_name map.name
  json.map_type map.map_type
end
