class Map < ActiveRecord::Base
  has_one :legend
  has_many_and_belongs_to :users
  has_many_and_belongs_to :pins
end
