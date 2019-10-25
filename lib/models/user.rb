class User < ActiveRecord::Base

  has_many :deliveries
  has_many :destinations, through: :deliveries

end

