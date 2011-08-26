class User < ActiveRecord::Base
  has_many :redemptions
end
