class TutorialsController < ApplicationController
    before_filter :login_required, :except => :index
  # GET /tutorials
  # GET /tutorials.xml
  def index
    @tutorials = Tutorials.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tutorials }
    end
  end

  # GET /tutorials/1
  # GET /tutorials/1.xml
  def show
    @tutorials = Tutorials.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tutorials }
    end
  end

  # GET /tutorials/new
  # GET /tutorials/new.xml
  def new
    @tutorials = Tutorials.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tutorials }
    end
  end

  # GET /tutorials/1/edit
  def edit
    @tutorials = Tutorials.find(params[:id])
  end

  # POST /tutorials
  # POST /tutorials.xml
  def create
    @tutorials = Tutorials.new(params[:tutorials])

    respond_to do |format|
      if @tutorials.save
        flash[:notice] = 'Tutorials was successfully created.'
        format.html { redirect_to(@tutorials) }
        format.xml  { render :xml => @tutorials, :status => :created, :location => @tutorials }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tutorials.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tutorials/1
  # PUT /tutorials/1.xml
  def update
    @tutorials = Tutorials.find(params[:id])

    respond_to do |format|
      if @tutorials.update_attributes(params[:tutorials])
        flash[:notice] = 'Tutorials was successfully updated.'
        format.html { redirect_to(@tutorials) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tutorials.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tutorials/1
  # DELETE /tutorials/1.xml
  def destroy
    @tutorials = Tutorials.find(params[:id])
    @tutorials.destroy

    respond_to do |format|
      format.html { redirect_to(tutorials_url) }
      format.xml  { head :ok }
    end
  end
end
