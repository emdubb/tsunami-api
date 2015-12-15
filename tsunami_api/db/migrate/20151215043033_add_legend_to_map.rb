class AddLegendToMap < ActiveRecord::Migration
  def change
    change_table :maps do |t|
      t.string   "flood_area_title"
      t.string   "flood_area_url"
      t.string   "naval_area_title"
      t.string   "naval_area_url"
      t.string   "evac_route_title"
      t.string   "evac_route_url"
      t.string   "closure_title"
      t.string   "closure_url"
      t.string   "railway_title"
      t.string   "railway_url"
      t.string   "biketrail_title"
      t.string   "biketrail_url"
      t.string   "beach_access_title"
      t.string   "beach_access_url"
      t.string   "refuge_title"
      t.string   "refuge_locations"
      t.string   "refuge_url"
      t.string   "evacuation_title"
      t.string   "evacuation_locations"
      t.string   "evacuation_url"
      t.string   "landmark_title"
      t.string   "landmark_url"
      t.string   "hospital_title"
      t.string   "hospital_locations"
      t.string   "hospital_url"
    end
  end
end
