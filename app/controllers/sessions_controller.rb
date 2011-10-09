class SessionsController < ApplicationController
  def new
		respond_to do |format|
			format.html { @title = "Sign in" }
			format.json { head :ok }
		end
  end

	def create
    user = User.authenticate(params[:session][:username],
                             params[:session][:password])
    if user.nil?
      respond_to do |format|
				format.html {
					flash.now[:error] = "Invalid username/password combination."
		      @title = "Sign in"
		      render 'new'
				}
				format.json {
					render :json => { :action => 'login', :error => 'invalid username/password' }
				}
    	end
		else
			sign_in user
			respond_to do |format|
				format.html {
					flash[:success] = "Welcome back to Youpon!"
					redirect_to user
				}
				format.json {
					render :json => { :action => 'login', :owner => current_user }
				}
			end
    end

	end
	
	def destroy
		sign_out
		flash[:success] = "You have successfully signed out."
		redirect_to root_path
	end

end
