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

class Roster < ActiveRecord::Base
  belongs_to :merchant
  belongs_to :employee
end
