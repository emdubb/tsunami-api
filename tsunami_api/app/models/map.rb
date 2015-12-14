class Map < ActiveRecord::Base
  has_one :legend
  has_and_belongs_to_many :users
  has_many :pins
end
