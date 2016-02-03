class Map < ActiveRecord::Base
  has_and_belongs_to_many :users, uniq: true
  belongs_to :city
  has_many :pins, through: :users
end
