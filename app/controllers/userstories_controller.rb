class UserstoriesController < ApplicationController
  # GET /userstories
  # GET /userstories.json
  def index
    @userstories = Userstory.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userstories }
    end
  end

  # GET /userstories/1
  # GET /userstories/1.json
  def show
    @userstory = Userstory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userstory }
    end
  end

  # GET /userstories/new
  # GET /userstories/new.json
  def new
    @userstory = Userstory.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userstory }
    end
  end

  # GET /userstories/1/edit
  def edit
    @userstory = Userstory.find(params[:id])
  end

  # POST /userstories
  # POST /userstories.json
  def create
    @userstory = Userstory.new(params[:userstory])

    respond_to do |format|
      if @userstory.save
        format.html { redirect_to @userstory, notice: 'Userstory was successfully created.' }
        format.json { render json: @userstory, status: :created, location: @userstory }
      else
        format.html { render action: "new" }
        format.json { render json: @userstory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userstories/1
  # PUT /userstories/1.json
  def update
    @userstory = Userstory.find(params[:id])

    respond_to do |format|
      if @userstory.update_attributes(params[:userstory])
        format.html { redirect_to @userstory, notice: 'Userstory was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userstory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userstories/1
  # DELETE /userstories/1.json
  def destroy
    @userstory = Userstory.find(params[:id])
    @userstory.destroy

    respond_to do |format|
      format.html { redirect_to userstories_url }
      format.json { head :no_content }
    end
  end
end
