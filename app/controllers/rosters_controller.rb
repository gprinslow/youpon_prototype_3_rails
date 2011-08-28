class RostersController < ApplicationController
  # GET /rosters
  # GET /rosters.xml
  def index
    @rosters = Roster.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rosters }
    end
  end

  # GET /rosters/1
  # GET /rosters/1.xml
  def show
    @roster = Roster.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @roster }
    end
  end

  # GET /rosters/new
  # GET /rosters/new.xml
  def new
    @roster = Roster.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @roster }
    end
  end

  # GET /rosters/1/edit
  def edit
    @roster = Roster.find(params[:id])
  end

  # POST /rosters
  # POST /rosters.xml
  def create
    @roster = Roster.new(params[:roster])

    respond_to do |format|
      if @roster.save
        format.html { redirect_to(@roster, :notice => 'Roster was successfully created.') }
        format.xml  { render :xml => @roster, :status => :created, :location => @roster }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @roster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /rosters/1
  # PUT /rosters/1.xml
  def update
    @roster = Roster.find(params[:id])

    respond_to do |format|
      if @roster.update_attributes(params[:roster])
        format.html { redirect_to(@roster, :notice => 'Roster was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @roster.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /rosters/1
  # DELETE /rosters/1.xml
  def destroy
    @roster = Roster.find(params[:id])
    @roster.destroy

    respond_to do |format|
      format.html { redirect_to(rosters_url) }
      format.xml  { head :ok }
    end
  end
end
