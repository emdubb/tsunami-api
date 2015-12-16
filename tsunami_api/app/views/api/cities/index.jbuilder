json.cities @cites do |city|
  json.name city.name
  json.county city.county
  json.maps city.maps do |map|
    json.map_id map.id
    json.map_name map.name
    json.map_type map.map_type
  end
end
