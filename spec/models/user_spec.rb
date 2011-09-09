require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :username => "Example User", :email => "user@example.com", :password => "asdf" }
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
end
