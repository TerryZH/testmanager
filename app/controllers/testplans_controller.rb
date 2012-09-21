class TestplansController < ApplicationController
  # GET /testplans
  # GET /testplans.json
  def index
    @testplans = Testplan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testplans }
    end
  end

  # GET /testplans/1
  # GET /testplans/1.json
  def show
    @testplan = Testplan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testplan }
    end
  end

  # GET /testplans/new
  # GET /testplans/new.json
  def new
    @testplan = Testplan.new
    @users = User.find(:all, :order => "last_name, first_name").
                         collect do |s|
                           [s.name, s.id]
                         end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testplan }
    end
  end

  # GET /testplans/1/edit
  def edit
    @testplan = Testplan.find(params[:id])
    @users = User.find(:all, :order => "last_name, first_name").
                         collect do |s|
                           [s.name, s.id]
                         end
  end

  # POST /testplans
  # POST /testplans.json
  def create
    @testplan = Testplan.new(params[:testplan])

    respond_to do |format|
      if @testplan.save
        format.html { redirect_to @testplan, notice: 'Testplan was successfully created.' }
        format.json { render json: @testplan, status: :created, location: @testplan }
      else
        format.html { render action: "new" }
        format.json { render json: @testplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testplans/1
  # PUT /testplans/1.json
  def update
    @testplan = Testplan.find(params[:id])

    respond_to do |format|
      if @testplan.update_attributes(params[:testplan])
        format.html { redirect_to @testplan, notice: 'Testplan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testplan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testplans/1
  # DELETE /testplans/1.json
  def destroy
    @testplan = Testplan.find(params[:id])
    @testplan.destroy

    respond_to do |format|
      format.html { redirect_to testplans_url }
      format.json { head :no_content }
    end
  end

  def select_cases
    @testplan = Testplan.find(params[:id])
    @testcases = Testcase.find(:all)
  end
end
