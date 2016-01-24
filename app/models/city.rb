class City < ActiveRecord::Base
  has_many :maps, dependent: :destroy

  scope :city_name, -> (name) { where(name: name)}
end
