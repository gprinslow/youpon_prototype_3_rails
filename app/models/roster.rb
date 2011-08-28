class Roster < ActiveRecord::Base
  belongs_to :merchant
  belongs_to :employee
end
