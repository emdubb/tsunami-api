# Clear all current data
User.destroy_all
City.destroy_all
Map.destroy_all
Pin.destroy_all

coronado_city = City.create(
  name: "Coronado",
  county: "San Diego",
  twitter: "@CoronadoCity",
  email: nil,
  website1: "www.coronado.ca.us",
  website2: nil,
  website3: nil,
  mobile_app: nil,
  facebook: nil,
  station: nil
)

user1 = User.create(
  fname: "John",
  lname: "Smith",
  email: "test1@email.com",
  password_digest: "abc123"
)

user2 = User.create(
  fname: "Rachel",
  lname: "Bascetta",
  email: "test2@email.com",
  password_digest: "abc123",
  emer_name1: "Mom",
  emer_phone1: "1234567890"
)

user3 = User.create(
  fname: "Melissa",
  lname: "Wilcox",
  email: "test3@email.com",
  password_digest: "abc123",
  emer_name1: "Dad",
  emer_phone1: "0987654321"
)

map1 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: nil,
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:nil,
  naval_area_title: "Naval Restricted Area",
  naval_area_url: nil,
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: nil,
  closure_title: "Possible Closure Due to Flooding",
  closure_url: nil,
  railway_title: "Railway",
  railway_url: nil,
  evacuation_title: "Potential Evacuation Center",
  evacuation_locations: "Coronado High School Gym | 650 D Ave (between 6th & Dave)",
  evacuation_url: nil,
  landmark_title: "Landmark",
  landmark_url: nil,
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: nil
)

map2 = Map.create(
  name: "North",
  map_type: "Walking",
  map_url: nil,
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:nil,
  naval_area_title: "Naval Restricted Area",
  naval_area_url: nil,
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: nil,
  closure_title: "Possible Closure Due to Flooding",
  closure_url: nil,
  beach_access_title: "Beach Access",
  beach_access_url: nil,
  landmark_title: "Landmark",
  landmark_url: nil,
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: nil
)

map3 = Map.create(
  name: "Mid",
  map_type: "Walking",
  map_url: nil,
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:nil,
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: nil,
  closure_title: "Possible Closure Due to Flooding",
  closure_url: nil,
  beach_access_title: "Beach Access",
  beach_access_url: nil,
  landmark_title: "Landmark",
  landmark_url: nil,
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: nil
)

map4 = Map.create(
  name: "South",
  map_type: "Walking",
  map_url: nil,
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:nil,
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: nil,
  closure_title: "Possible Closure Due to Flooding",
  closure_url: nil,
  beach_access_title: "Beach Access",
  beach_access_url: nil,
  landmark_title: "Landmark",
  landmark_url: nil,
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: nil
)

pin1 = Pin.create(
  name: "Home",
  address: "501 W Olympic Blvd",
  phone: "9712429522",
  coordinates: nil
)

pin2 = Pin.create(
  name: "School",
  address: "123 Main St",
  phone: "9712429522",
  coordinates: nil
)

pin3 = Pin.create(
  name: "Nanny",
  address: "729 Flower St",
  phone: "9712429522",
  coordinates: nil
)

map1.pins << pin1
map1.pins << pin2
map2.pins << pin3

coronado_city.maps << map1
coronado_city.maps << map2
coronado_city.maps << map3
coronado_city.maps << map4
