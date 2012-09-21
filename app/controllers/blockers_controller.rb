class BlockersController < ApplicationController
  # GET /blockers
  # GET /blockers.json
  def index
    @blockers = Blocker.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @blockers }
    end
  end

  # GET /blockers/1
  # GET /blockers/1.json
  def show
    @blocker = Blocker.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @blocker }
    end
  end

  # GET /blockers/new
  # GET /blockers/new.json
  def new
    @blocker = Blocker.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @blocker }
    end
  end

  # GET /blockers/1/edit
  def edit
    @blocker = Blocker.find(params[:id])
  end

  # POST /blockers
  # POST /blockers.json
  def create
    @blocker = Blocker.new(params[:blocker])

    respond_to do |format|
      if @blocker.save
        format.html { redirect_to @blocker, notice: 'Blocker was successfully created.' }
        format.json { render json: @blocker, status: :created, location: @blocker }
      else
        format.html { render action: "new" }
        format.json { render json: @blocker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /blockers/1
  # PUT /blockers/1.json
  def update
    @blocker = Blocker.find(params[:id])

    respond_to do |format|
      if @blocker.update_attributes(params[:blocker])
        format.html { redirect_to @blocker, notice: 'Blocker was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @blocker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blockers/1
  # DELETE /blockers/1.json
  def destroy
    @blocker = Blocker.find(params[:id])
    @blocker.destroy

    respond_to do |format|
      format.html { redirect_to blockers_url }
      format.json { head :no_content }
    end
  end
end
