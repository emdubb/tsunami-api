json.users @users do |user|
  json.fname user.fname
  json.lname user.lname
  json.email user.email
  json.maps user.maps do |map|
    json.map map.name
    json.city map.city.name
    json.pins map.pins do |pin|
      json.name pin.name
    end
  end
end
