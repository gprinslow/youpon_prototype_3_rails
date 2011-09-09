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

class Redemption < ActiveRecord::Base
  belongs_to :offer
end
