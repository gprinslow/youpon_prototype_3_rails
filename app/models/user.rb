# == Schema Information
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  username           :string(255)
#  email              :string(255)
#  first_name         :string(255)
#  middle_name        :string(255)
#  last_name          :string(255)
#  birthday           :date
#  gender             :string(255)
#  zip_code           :integer
#  created_at         :datetime
#  updated_at         :datetime
#  encrypted_password :string(255)
#  salt               :string(255)
#

require 'digest'
class User < ActiveRecord::Base
  has_many :redemptions
	attr_accessor :password
	attr_accessible :username, :email, :password, :password_confirmation, :first_name, :middle_name, :last_name, :birthday, :gender, :zip_code
	
	email_regex =  /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	
	validates :username, :presence => true, :length => { :maximum => 50 }, :uniqueness => { :case_sensitive => false }
	validates :email, :presence => true, :format => { :with => email_regex }, :uniqueness => { :case_sensitive => false }
	validates :password, :presence => true, :confirmation => true, :length => { :within => 6..40 }
	
	before_save :encrypt_password
	
	#Public methods
	def has_password?(submitted_password)
		encrypted_password == encrypt(submitted_password)
	end
	
	def self.authenticate(username, submitted_password)
		user = find_by_username(username)
		return nil if user.nil?
		return user if user.has_password?(submitted_password)
	end
	
	def self.authenticate_with_salt(id, session_salt)
		user = find_by_id(id)
		(user && user.salt == session_salt) ? user : nil
	end
	
	private
		
		def encrypt_password
			self.salt = make_salt if new_record?
			self.encrypted_password = encrypt(password)
		end
		
		def encrypt(string)
			secure_hash("#{salt}--#{string}")
		end
		
		def make_salt
			secure_hash("#{Time.now.utc}--#{password}")
		end
		
		def secure_hash(string)
			Digest::SHA2.hexdigest(string)
		end
		
end
