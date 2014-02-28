class StudsController < ApplicationController
  # This file contains all the controller code generated with 'rails g scaffold ...'

  before_action :set_stud, only: [:show, :edit, :update, :destroy]
  
  # GET /studs
  # GET /studs.json
  def index
    @studs = Stud.all
  end

  # GET /studs/1
  # GET /studs/1.json
  def show
  end

  # GET /studs/new
  def new
    @stud = Stud.new
  end

  # GET /studs/1/edit
  def edit
  end

  # POST /studs
  # POST /studs.json
  def create
    @stud = Stud.new(stud_params)

    respond_to do |format|
      if @stud.save
        format.html { redirect_to @stud, notice: 'Stud was successfully created.' }
        format.json { render action: 'show', status: :created, location: @stud }
      else
        format.html { render action: 'new' }
        format.json { render json: @stud.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /studs/1
  # PATCH/PUT /studs/1.json
  def update
    respond_to do |format|
      if @stud.update(stud_params)
        format.html { redirect_to @stud, notice: 'Stud was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @stud.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /studs/1
  # DELETE /studs/1.json
  def destroy
    @stud.destroy
    respond_to do |format|
      format.html { redirect_to studs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stud
      @stud = Stud.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stud_params
      params.require(:stud).permit(:firstname, :lastname, :github)
    end
end
