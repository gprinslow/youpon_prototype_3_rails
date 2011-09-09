require 'spec_helper'

describe User do

  before(:each) do
    @attr = { :username => "Example User", :email => "user@example.com", :password => "asdf" }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end
  
  it "should require a name"
end
