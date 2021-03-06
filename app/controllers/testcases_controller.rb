class TestcasesController < ApplicationController
  # GET /testcases
  # GET /testcases.json
  def index
    @testcases = Testcase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @testcases }
    end
  end

  # GET /testcases/1
  # GET /testcases/1.json
  def show
    @testcase = Testcase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @testcase }
    end
  end

  # GET /testcases/new
  # GET /testcases/new.json
  def new
    @testcase = Testcase.new
    @users = User.find(:all, :order => "last_name, first_name").
                         collect do |s|
                           [s.name, s.id]
                         end
    @locales = Locale.find(:all, :order => "id").
                             collect do |s|
                               [s.locale_name, s.id]
                             end
    @function_modules = FunctionModule.find(:all, :order => "module_name").
                             collect do |s|
                               [s.module_name, s.id]
                             end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @testcase }
    end
  end

  # GET /testcases/1/edit
  def edit
    @testcase = Testcase.find(params[:id])
    @users = User.find(:all, :order => "last_name, first_name").
                         collect do |s|
                           [s.name, s.id]
                         end
    @locales = Locale.find(:all, :order => "id").
                             collect do |s|
                               [s.locale_name, s.id]
                             end
    @function_modules = FunctionModule.find(:all, :order => "module_name").
                             collect do |s|
                               [s.module_name, s.id]
                             end
  end

  # POST /testcases
  # POST /testcases.json
  def create
    @testcase = Testcase.new(params[:testcase])

    respond_to do |format|
      if @testcase.save
#        format.html { redirect_to @testcase, notice: 'Testcase was successfully created.' }
        format.html { redirect_to @testcase, notice: params }
        format.json { render json: @testcase, status: :created, location: @testcase }
      else
        format.html { render action: "new" }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /testcases/1
  # PUT /testcases/1.json
  def update
    @testcase = Testcase.find(params[:id])

    respond_to do |format|
      if @testcase.update_attributes(params[:testcase])
        format.html { redirect_to @testcase, notice: 'Testcase was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @testcase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /testcases/1
  # DELETE /testcases/1.json
  def destroy
    @testcase = Testcase.find(params[:id])
    @testcase.destroy

    respond_to do |format|
      format.html { redirect_to testcases_url }
      format.json { head :no_content }
    end
  end
end
