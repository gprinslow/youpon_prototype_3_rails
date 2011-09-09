# == Schema Information
#
# Table name: employees
#
#  id         :integer         not null, primary key
#  user_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Employee < ActiveRecord::Base
  belongs_to :user
end
