# == Schema Information
#
# Table name: customers
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Customer < ActiveRecord::Base
  belongs_to :user
end
