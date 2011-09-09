# == Schema Information
#
# Table name: rosters
#
#  id          :integer         not null, primary key
#  merchant_id :integer
#  employee_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class RosterTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
