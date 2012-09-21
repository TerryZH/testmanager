class TestresultsController < ApplicationController
  # GET /testresults
  # GET /testresults.json
  def index
    @testresults = Testresult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testresults }
    end
  end

  # GET /testresults/1
  # GET /testresults/1.json
  def show
    @testresult = Testresult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testresult }
    end
  end

  # GET /testresults/new
  # GET /testresults/new.json
  def new
    @testresult = Testresult.new
    @browsers = Browser.find(:all, :order => "browser_core, browser_family").
                             collect do |s|
                               [s.name, s.id]
                             end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testresult }
    end
  end

  # GET /testresults/1/edit
  def edit
    @testresult = Testresult.find(params[:id])
    @browsers = Browser.find(:all, :order => "browser_core, browser_family").
                             collect do |s|
                               [s.name, s.id]
                             end
  end

  # POST /testresults
  # POST /testresults.json
  def create
    @testresult = Testresult.new(params[:testresult])

    respond_to do |format|
      if @testresult.save
        format.html { redirect_to @testresult, notice: 'Testresult was successfully created.' }
        format.json { render json: @testresult, status: :created, location: @testresult }
      else
        format.html { render action: "new" }
        format.json { render json: @testresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testresults/1
  # PUT /testresults/1.json
  def update
    @testresult = Testresult.find(params[:id])

    respond_to do |format|
      if @testresult.update_attributes(params[:testresult])
        format.html { redirect_to @testresult, notice: 'Testresult was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testresults/1
  # DELETE /testresults/1.json
  def destroy
    @testresult = Testresult.find(params[:id])
    @testresult.destroy

    respond_to do |format|
      format.html { redirect_to testresults_url }
      format.json { head :no_content }
    end
  end
end
