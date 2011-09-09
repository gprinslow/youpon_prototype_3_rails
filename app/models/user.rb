# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  email      :string(255)
#  password   :string(255)
#  nameFirst  :string(255)
#  nameMiddle :string(255)
#  nameLast   :string(255)
#  birthday   :date
#  gender     :string(255)
#  zipCode    :integer
#  created_at :datetime
#  updated_at :datetime
#

class User < ActiveRecord::Base
  has_many :redemptions
	attr_accessible :username, :email, :password, :nameFirst, :nameMiddle, :nameLast, :birthday, :gender, :zipCode
	
	validates :username, :presence => true
	validates :email, :presence => true
	validates :password, :presence => true
	
end
