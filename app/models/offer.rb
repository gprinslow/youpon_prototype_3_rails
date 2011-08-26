class Offer < ActiveRecord::Base
  belongs_to :merchant
  has_many :redemptions
end
