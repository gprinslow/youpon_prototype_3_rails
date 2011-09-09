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

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
