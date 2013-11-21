class BackPocketsController < ApplicationController
  # GET /Back_pockets
  # GET /Back_pockets.json
  def index
    @back_pockets = Back_pocket.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stars }
    end
  end

  # GET /stars/1
  # GET /stars/1.json
  def show
    @back_pocket = Back_pocket.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @back_pocket }
    end
  end

  # GET /Back_pockets/new
  # GET /Back_pockets/new.json
  def new
    @back_pocket = Back_pocket.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @back_pocket }
    end
  end

  # GET /Back_pockets/1/edit
  def edit
    @back_pocket = Back_pocket.find(params[:id])
  end

  # POST /Back_pockets
  # POST /Back_pockets.json
  def create
    @
    @back_pocket = Back_pocket.new(params[:Back_pocket])

    respond_to do |format|
      if @back_pocket.save
        format.html { redirect_to @back_pocket, notice: 'Back_pocket was successfully created.' }
        format.json { render json: @back_pocket, status: :created, location: @back_pocket }
      else
        format.html { render action: "new" }
        format.json { render json: @back_pocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /Back_pockets/1
  # PUT /Back_pockets/1.json
  def update
    @back_pocket = Back_pocket.find(params[:id])

    respond_to do |format|
      if @back_pocket.update_attributes(params[:Back_pocket])
        format.html { redirect_to @back_pocket, notice: 'Back_pocket was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @back_pocket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /Back_pockets/1
  # DELETE /Back_pockets/1.json
  def destroy
    @back_pocket = Back_pocket.find(params[:id])
    @back_pocket.destroy

    respond_to do |format|
      format.html { redirect_to back_pockets_url }
      format.json { head :no_content }
    end
  end
end
