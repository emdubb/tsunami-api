json.cities @cities do |city|
  json.id city.id
  json.name city.name
  json.county city.county
  json.maps city.maps do |map|
    json.id map.id
    json.map_name map.name
    json.map_type map.map_type
    json.map_url map.map_url
    json.city_id map.city_id
  end
end
