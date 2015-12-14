# Clear all current data
User.destroy_all
City.destroy_all
Legend.destroy_all
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

test_user = User.create(
  fname: "John",
  lname: "Smith",
  email: "test@email.com",
  password: "abc123",
  default_map: nil,
  emer_hospital: nil,
  emer_meeting_area: nil,
  emer_name1: nil,
  emer_phone1: nil,
  emer_name2: nil,
  emer_phone2: nil,
  emer_name3: nil,
  emer_phone3: nil
)

coronado_map = Map.create(
  city_id: nil,
  name: "Zone 1",
  type: "Walking",
  map_url: nil
)

coronado_legend = Legend.create(
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:nil,
  naval_area_title: "Naval Restricted Area",
  naval_area_url: nil,
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: nil,
  closure_title: "Possible Closure Due to Flooding",
  closure_url: nil,
  railway_title: "Railway",
  railway_rul: nil,
  biketrail_title: nil,
  biketrail_url: nil,
  beach_access_title: nil,
  beach_access_url: nil,
  refuge_title: nil,
  refuge_locations: nil,
  refuge_url: nil,
  evacuation_title: "Potential Evacuation Center",
  evacuation_locations: "Coronado High School Gym | 650 D Ave (between 6th & Dave)",
  evacuation_url: nil,
  landmark_title: "Landmark",
  landmark_url: nil,
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: nil
)

test_pin = Pin.create (
  name: "Home",
  address: "501 W Olympic Blvd",
  phone: "9712429522",
  coordinates: nil
)
