json.fname @user.fname
json.lname @user.lname
json.email @user.email
json.emer_hospital @user.emer_hospital
json.emer_meeting_area @user.emer_meeting_area
json.emer_name1 @user.emer_name1
json.emer_phone1 @user.emer_phone1
json.emer_name2 @user.emer_name2
json.emer_phone2 @user.emer_phone2
json.emer_name3 @user.emer_name3
json.emer_phone3 @user.emer_phone3
json.maps @user.maps do |map|
  json.map map
  json.city map.city.map
  json.pins map.pins
end
