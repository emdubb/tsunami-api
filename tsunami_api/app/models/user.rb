class User < ActiveRecord::Base
  has_one :legend, through :maps
  has_and_belongs_to_many :maps
  has_many :pins, through :maps
  has_secure_password
  validates :email, presence: true, uniqueness: true
end