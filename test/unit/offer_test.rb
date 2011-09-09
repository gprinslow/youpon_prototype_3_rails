# == Schema Information
#
# Table name: offers
#
#  id                 :integer         not null, primary key
#  merchant_id        :integer
#  mode               :string(255)
#  title              :string(255)
#  byline             :string(255)
#  category           :string(255)
#  description        :string(255)
#  terms              :string(255)
#  retailPrice        :string(255)
#  discountPrice      :string(255)
#  discountPercent    :string(255)
#  discountValue      :string(255)
#  start              :date
#  end                :date
#  numberOffered      :integer
#  validationRequired :boolean
#  stampsRequired     :integer
#  created_at         :datetime
#  updated_at         :datetime
#

require 'test_helper'

class OfferTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
