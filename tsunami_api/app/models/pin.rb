class Pin < ActiveRecord::Base
  belongs_to :user
  has_one :map, through: :user

  scope :map, -> (id) { where(map_id: id)}
end
