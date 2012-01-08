class DataController < ApplicationController
  # GET /data
  # GET /data.xml
  def index
    @data = Datum.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @data }
    end
  end

  # GET /data/1
  # GET /data/1.xml
  def show
    @datum = Datum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @datum }
    end
  end

  # GET /data/new
  # GET /data/new.xml
  def new
    @datum = Datum.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @datum }
    end
  end

  # GET /data/1/edit
  def edit
    @datum = Datum.find(params[:id])
  end

  # POST /data
  # POST /data.xml
  def create
    @datum = Datum.new(params[:datum])

    respond_to do |format|
      if @datum.save
        format.html { redirect_to(@datum, :notice => 'Datum was successfully created.') }
        format.xml  { render :xml => @datum, :status => :created, :location => @datum }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /data/1
  # PUT /data/1.xml
  def update
    @datum = Datum.find(params[:id])
    respond_to do |format|
      if @datum.update_attributes(params[:datum])
        format.html { redirect_to(@datum, :notice => 'Datum was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @datum.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /data/1
  # DELETE /data/1.xml
  def destroy
    @datum = Datum.find(params[:id])
    @datum.destroy

    respond_to do |format|
      format.html { redirect_to(data_url) }
      format.xml  { head :ok }
    end
  end
end
