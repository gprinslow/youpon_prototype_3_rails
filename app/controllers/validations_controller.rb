class ValidationsController < ApplicationController
    
    # GET /validations
    # GET /validations.xml
    def index
      @validations = Redemption.order("created_on").find_all_by_status(0)

      respond_to do |format|
        format.html # index.html.erb
        format.xml  { render :xml => @validations }
      end
    end

    # GET /redemptions/1
    # GET /redemptions/1.xml
    def show
      @validation = Redemption.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.xml  { render :xml => @validation }
      end
    end

    # GET /redemptions/1/edit
    def edit
      @validation = Redemption.find(params[:id])
    end

    # PUT /redemptions/1
    # PUT /redemptions/1.xml
    def update
      @validation = Redemption.find(params[:id])

      respond_to do |format|
        if @validation.update_attributes(params[:redemption])
          format.html { redirect_to(@validation, :notice => 'Validation action was recorded.') }
          format.xml  { head :ok }
        else
          format.html { render :action => "edit" }
          format.xml  { render :xml => @validation.errors, :status => :unprocessable_entity }
        end
      end
    end
  
end
