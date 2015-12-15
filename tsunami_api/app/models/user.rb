class User < ActiveRecord::Base
  has_and_belongs_to_many :maps
  has_many :pins, through: :maps, dependent: :destroy

  has_secure_password
  validates :email, presence: true, uniqueness: true

  def add_map! (map_id)
    map = Map.find(map_id)
    maps << Map.find(map)
  end

end
