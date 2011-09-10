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

require 'spec_helper'

describe User do

  before(:each) do
    @attr = { 
			:username => "Example User", 
			:email => "user@example.com", 
			:password => "foobar",
			:password_confirmation => "foobar"
		}
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  it "should require a username" do
		no_name_user = User.new(@attr.merge(:username => ""))
		no_name_user.should_not be_valid
	end
	
	it "should require a email" do
		no_name_user = User.new(@attr.merge(:email => ""))
		no_name_user.should_not be_valid
	end
	
	it "should require a password" do
		no_name_user = User.new(@attr.merge(:password => ""))
		no_name_user.should_not be_valid
	end
	
	it "should reject names that are too long" do
		long_username = "a" * 51
		long_username_user = User.new(@attr.merge(:username => long_username))
		long_username_user.should_not be_valid
	end
	
	it "should accept valid email addresses" do
    addresses = %w[user@foo.com THE_USER@foo.bar.org first.last@foo.jp]
    addresses.each do |address|
      valid_email_user = User.new(@attr.merge(:email => address))
      valid_email_user.should be_valid
    end
  end

  it "should reject invalid email addresses" do
    addresses = %w[user@foo,com user_at_foo.org example.user@foo.]
    addresses.each do |address|
      invalid_email_user = User.new(@attr.merge(:email => address))
      invalid_email_user.should_not be_valid
    end
  end
  
	it "should reject duplicate usernames" do
    # Put a user with given username into the database.
    User.create!(@attr)
    user_with_duplicate_username = User.new(@attr)
    user_with_duplicate_username.should_not be_valid
  end

  it "should reject duplicate email addresses" do
    # Put a user with given email address into the database.
    User.create!(@attr)
    user_with_duplicate_email = User.new(@attr)
    user_with_duplicate_email.should_not be_valid
  end

  it "should reject usernames identical up to case" do
    upcased_username = @attr[:username].upcase
    User.create!(@attr.merge(:username => upcased_username))
    user_with_duplicate_upcase_username = User.new(@attr)
    user_with_duplicate_upcase_username.should_not be_valid
  end

  it "should reject email addresses identical up to case" do
    upcased_email = @attr[:email].upcase
    User.create!(@attr.merge(:email => upcased_email))
    user_with_duplicate_upcase_email = User.new(@attr)
    user_with_duplicate_upcase_email.should_not be_valid
  end

  describe "password validations" do
    
		it "should require a password" do
      User.new(@attr.merge(:password => "", :password_confirmation => "")).should_not be_valid
    end

    it "should require a matching password confirmation" do
      User.new(@attr.merge(:password_confirmation => "invalid")).should_not be_valid
    end

    it "should reject short passwords" do
      short = "a" * 5
      hash = @attr.merge(:password => short, :password_confirmation => short)
      User.new(hash).should_not be_valid
    end

    it "should reject long passwords" do
      long = "a" * 41
      hash = @attr.merge(:password => long, :password_confirmation => long)
      User.new(hash).should_not be_valid
    end
  end

	describe "password encryption" do

    before(:each) do
      @user = User.create!(@attr)
    end

    it "should have an encrypted password attribute" do
      @user.should respond_to(:encrypted_password)
    end

		it "should set the encrypted password" do
			@user.encrypted_password.should_not be_blank
		end
		
		describe "has_password? method" do
			
			it "should be true if the passwords match" do
				@user.has_password?(@attr[:password]).should be_true
			end
			
			it "should be false if the passwords don't match" do
				@user.has_password?("invalid").should be_false
			end
		end
  end
#end of user spec
end
