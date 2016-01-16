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
san_diego = City.create(
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
  website2: "www.ci.solana-beach.ca.us",
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

map1a = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/coronado_main.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  naval_area_title: "Naval Restricted Area",
  naval_area_url: "assets/img/legend/naval.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Potential Evacuation Center",
  evacuation_locations: "Coronado High School Gym | 650 D Ave (between 6th & Dave)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: "assets/img/legend/hospital.svg"
)

map1b = Map.create(
  name: "North",
  map_type: "Walking",
  map_url: "assets/img/coronado_north.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  naval_area_title: "Naval Restricted Area",
  naval_area_url: "assets/img/legend/naval.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  beach_access_title: "Beach Access",
  beach_access_url: "assets/img/legend/beach.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: "assets/img/legend/hospital.svg"
)

map1c = Map.create(
  name: "Mid",
  map_type: "Walking",
  map_url: "assets/img/coronado_mid.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/naval.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/evac_route.svg",
  beach_access_title: "Beach Access",
  beach_access_url: "assets/img/legend/closure.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: nil
)

map1d = Map.create(
  name: "South",
  map_type: "Walking",
  map_url: "assets/img/coronado_south.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url: "assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  beach_access_title: "Beach Access",
  beach_access_url: "assets/img/legend/beach.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Sharp Coronado Hospital | 250 Prospect Place",
  hospital_url: "assets/img/legend/landmark.svg"
)

map2 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/san_diego.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  naval_area_title: "Naval Restricted Area",
  naval_area_url: "assets/img/legend/naval.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Scripps Memorial Hospital La Jolla | 9888 Genesse Ave",
  hospital_url: "assets/img/legend/hospital.svg"
)

map3 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/imperial_beach.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  naval_area_title: "Naval Restricted Area",
  naval_area_url: "assets/img/legend/naval.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg"
)

map4 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/carlsbad.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg"
)

map5 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/encinitas.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  naval_area_title: "Naval Restricted Area",
  naval_area_url: "assets/img/legend/naval.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Scripps Memorial Hospital | 354 Santa Fe Drive",
  hospital_url: "assets/img/legend/hospital.svg"
)

map6 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/oceanside.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg"
)

map7 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/solana_beach.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg"
)

map8 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/national_city.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  naval_area_title: "Naval Restricted Area",
  naval_area_url: "assets/img/legend/naval.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Paradise Valley Hospital | 2400 E 4th St",
  hospital_url: "assets/img/legend/hospital.svg"
)

map9 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/del_mar.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg"
)

map10 = Map.create(
  name: "Overview",
  map_type: "Driving",
  map_url: "assets/img/chula_vista.svg",
  flood_area_title: "Potential Tsunami Flood Areas",
  flood_area_url:"assets/img/legend/flood.svg",
  evac_route_title: "Tsunami Evacuation Route",
  evac_route_url: "assets/img/legend/evac_route.svg",
  closure_title: "Possible Closure Due to Flooding",
  closure_url: "assets/img/legend/closure.svg",
  railway_title: "Railway",
  railway_url: "assets/img/legend/railway.svg",
  evacuation_title: "Community Refuge Areas",
  evacuation_locations: "(Dial 2-1-1 to confirm locations)",
  evacuation_url: "assets/img/legend/evacuation.svg",
  landmark_title: "Landmark",
  landmark_url: "assets/img/legend/landmark.svg",
  hospital_title: "Hospital",
  hospital_locations: "Scripps Mercy Hospital | 435 H St",
  hospital_url: "assets/img/legend/hospital.svg"
)

coronado_city.maps << map1a
coronado_city.maps << map1b
coronado_city.maps << map1c
coronado_city.maps << map1d
san_diego.maps << map2
imperial_beach.maps << map3
carlsbad.maps << map4
encinitas.maps << map5
oceanside.maps << map6
solana_beach.maps << map7
national_city.maps << map8
del_mar.maps << map9
chula_vista.maps << map10
