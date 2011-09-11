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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
