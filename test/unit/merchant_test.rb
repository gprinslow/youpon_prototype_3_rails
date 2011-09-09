# == Schema Information
#
# Table name: merchants
#
#  id             :integer         not null, primary key
#  name           :string(255)
#  byline         :string(255)
#  category       :string(255)
#  description    :string(255)
#  phone          :string(255)
#  website        :string(255)
#  email          :string(255)
#  addressStreet1 :string(255)
#  addressStreet2 :string(255)
#  addressCity    :string(255)
#  addressState   :string(255)
#  addressZip5    :integer
#  addressZip4    :integer
#  created_at     :datetime
#  updated_at     :datetime
#

require 'test_helper'

class MerchantTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
