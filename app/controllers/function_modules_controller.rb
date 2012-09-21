class FunctionModulesController < ApplicationController
  # GET /function_modules
  # GET /function_modules.json
  def index
    @function_modules = FunctionModule.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @function_modules }
    end
  end

  # GET /function_modules/1
  # GET /function_modules/1.json
  def show
    @function_module = FunctionModule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @function_module }
    end
  end

  # GET /function_modules/new
  # GET /function_modules/new.json
  def new
    @function_module = FunctionModule.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @function_module }
    end
  end

  # GET /function_modules/1/edit
  def edit
    @function_module = FunctionModule.find(params[:id])
  end

  # POST /function_modules
  # POST /function_modules.json
  def create
    @function_module = FunctionModule.new(params[:function_module])

    respond_to do |format|
      if @function_module.save
        format.html { redirect_to @function_module, notice: 'Function module was successfully created.' }
        format.json { render json: @function_module, status: :created, location: @function_module }
      else
        format.html { render action: "new" }
        format.json { render json: @function_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /function_modules/1
  # PUT /function_modules/1.json
  def update
    @function_module = FunctionModule.find(params[:id])

    respond_to do |format|
      if @function_module.update_attributes(params[:function_module])
        format.html { redirect_to @function_module, notice: 'Function module was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @function_module.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /function_modules/1
  # DELETE /function_modules/1.json
  def destroy
    @function_module = FunctionModule.find(params[:id])
    @function_module.destroy

    respond_to do |format|
      format.html { redirect_to function_modules_url }
      format.json { head :no_content }
    end
  end
end
