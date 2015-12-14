class Pin < ActiveRecord::Base
  has_one :map
  belongs_to :map
end
