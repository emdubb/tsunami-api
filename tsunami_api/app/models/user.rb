class User < ActiveRecord::Base
  has_and_belongs_to_many :maps, uniq: true
  has_many :pins, through: :maps, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true

  def add_map!(map)
    maps << map
    if maps.length == 1
      update_attributes(:default_map => map.id)
      add_info!(map)
      save!
    end
  end

  def add_info!(map)
    update_attributes(:emer_hospital => map.hospital_locations)
    update_attributes(:emer_meeting_area => map.evacuation_locations || map.refuge_locations)
  end

  def change_default_map!(map)
    maps << map unless maps.include?(map)
    update_attributes(:default_map => map.id)
    add_info!(map)
    save!
  end

  def remove_map!(map)
    maps.delete(map)
    if maps.length >= 1
      change_default_map!(maps.first)
    end
  end

end
