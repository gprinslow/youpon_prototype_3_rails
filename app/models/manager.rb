# == Schema Information
#
# Table name: managers
#
#  id          :integer         not null, primary key
#  employee_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class Manager < ActiveRecord::Base
  belongs_to :employee
end
