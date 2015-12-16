class User < ActiveRecord::Base
  has_and_belongs_to_many :maps, uniq: true
  has_many :pins, through: :maps, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true

  def add_map!(map)
    maps << map
    if maps.length == 1
      default_map = map.id
      save!
    end
  end

  def add_info!(map_id)
    map = Map.find(map_id)
    update_attributes(:emer_hospital => map.hospital_locations) unless emer_hospital
    update_attributes(:emer_meeting_area => map.evacuation_locations || map.refuge_locations) unless emer_meeting_area
  end

  def remove_map!(map_id)
    map = Map.find(map_id)
    maps.delete(map)
  end

end
