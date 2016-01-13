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
san_diego_city = City.create(
  name: "San Diego",
  county: "San Diego",
  twitter: nil,
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.sandiego.gov/ohs",
  website3: "www.tsunami.gov",
  mobile_app: "SD Emergency",
  facebook: nil,
  station: nil
)
imperial_beach = City.create(
  name: "Imperial Beach",
  county: "San Diego",
  twitter: "@CityofIB",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.imperialbeachca.gov",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: nil,
  station: nil
)
carlsbad = City.create(
  name: "Carlsbad",
  county: "San Diego",
  twitter: "@carlsbadcagov",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.carlsbad.gov",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: "Facebook.com/cityofcarlsbad",
  station: nil
)
encinitas = City.create(
  name: "Encinitas",
  county: "San Diego",
  twitter: "@EncinitasFire",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.cityofencinitasfire",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: nil,
  station: "Radio: 1500AM"
)
oceanside = City.create(
  name: "Oceanside",
  county: "San Diego",
  twitter: "@CityofOceanside",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.ci.oceanside.ca.us",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: "Facebook.com/CityofOceanside",
  station: nil
)
solana_beach = City.create(
  name: "Solana Beach",
  county: "San Diego",
  twitter: "@CitySolanaBeach",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.ci.solana-beack.ca.us",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: "Facebook.com/cityofsolanabeach",
  station: nil
)
national_city = City.create(
  name: "National City",
  county: "San Diego",
  twitter: "@CityOfNatlCity",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.nationalcityca.gov",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: nil,
  station: nil
)
del_mar = City.create(
  name: "Del Mar",
  county: "San Diego",
  twitter: "@CityDelMar",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.delmar.ca.us",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: "Facebook.com/CityofDelMar",
  station: nil
)
chula_vista = City.create(
  name: "Chula Vista",
  county: "San Diego",
  twitter: "@thinkchulavista",
  email: nil,
  website1: "www.readysandiego.org",
  website2: "www.chulavistaca.gov",
  website3: nil,
  mobile_app: "SD Emergency",
  facebook: "Facebook.com/ChulaVistaCity",
  station: nil
)

user1 = User.create(
  fname: "John",
  lname: "Smith",
  email: "test1@email.com",
  password: "abc123"
)

user2 = User.create(
  fname: "Rachel",
  lname: "Bascetta",
  email: "test2@email.com",
  password: "abc123",
  emer_name1: "Mom",
  emer_phone1: "1234567890"
)

user3 = User.create(
  fname: "Melissa",
  lname: "Wilcox",
  email: "test3@email.com",
  password: "abc123",
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

coronado_city.maps << map1
coronado_city.maps << map2
coronado_city.maps << map3
coronado_city.maps << map4
