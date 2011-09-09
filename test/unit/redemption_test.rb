# == Schema Information
#
# Table name: redemptions
#
#  id         :integer         not null, primary key
#  offer_id   :integer
#  user_id    :integer
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class RedemptionTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
