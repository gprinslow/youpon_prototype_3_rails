class ReportsController < ApplicationController
  def index
		@title = "Reports"
		
		if current_user
			@employee = Employee.find_by_user_id(current_user.id)

			if @employee
				@roster = Roster.find_by_employee_id(@employee.id)
				@merchant = Merchant.find_by_id(@roster.merchant_id)
				@offers = @merchant.offers
				
				@manager = Manager.find_by_employee_id(@employee.id)
				if @manager
					respond_to do |format|
						format.html
					end
				else
					redirect_to root_path
				end
			else
				redirect_to root_path
			end
		else
			redirect_to root_path
		end
  end
end
