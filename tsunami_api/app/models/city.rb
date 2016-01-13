class City < ActiveRecord::Base
  has_many :maps

  scope :city_name, -> (name) { where(name: name)}
end
