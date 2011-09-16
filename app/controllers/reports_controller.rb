class ReportsController < ApplicationController
  def index

	    @title = "Reports"

			@employee = Employee.find_by_user_id(current_user.id)
			
		#	if @employee != nil
				#@manager = Manager.find_by_employee_id(@employee.id)
				#if @manager != nil
					@merchant = Merchant.find_by_id(1) # TODO: FIX THIS RELATIONSHIP (thru Roster?)
					@offers = @merchant.offers
				#end
			#end

	    respond_to do |format|
	      format.html # index.html.erb
	    end

  end

end
