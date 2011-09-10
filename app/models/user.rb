# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  username           :string(255)
#  email              :string(255)
#  nameFirst          :string(255)
#  nameMiddle         :string(255)
#  nameLast           :string(255)
#  birthday           :date
#  gender             :string(255)
#  zipCode            :integer
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#

class User < ActiveRecord::Base
  has_many :redemptions
	attr_accessor :password
	attr_accessible :username, :email, :password, :password_confirmation, :nameFirst, :nameMiddle, :nameLast, :birthday, :gender, :zipCode
	
	email_regex =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :username, :presence => true, :length => { :maximum => 50 }, :uniqueness => { :case_sensitive => false }
	validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }
	validates :password, :presence => true, :confirmation => true, :length => { :within => 6..40 }
	
	before_save :encrypt_password
	
	#Return true if the user's password matches the submitted password
	def has_password?(submitted_password)
		#Compare encrypted_password with encrypt(submitted_password)
		encrypted_password == encrypt(submitted_password)
	end
	
	
	private
		
		def encrypt_password
			self.encrypted_password = encrypt(self.password)
		end
		
		def encrypt(string)
			string #Only temporary
		end
		
end
