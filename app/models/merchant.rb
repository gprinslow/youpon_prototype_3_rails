class Merchant < ActiveRecord::Base
  has_many :offers
  has_many :redemptions, :through => :offers
  has_many :employees, :through => :rosters
end
