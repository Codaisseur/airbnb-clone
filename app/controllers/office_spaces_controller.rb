class OfficeSpacesController < ApplicationController
  before_action :set_office_space, only: [:show, :edit, :update, :destroy]

  # GET /office_spaces
  # GET /office_spaces.json
  def index
    @office_spaces = OfficeSpace.all
  end

  # GET /office_spaces/1
  # GET /office_spaces/1.json
  def show
  end

  # GET /office_spaces/new
  def new
    @office_space = OfficeSpace.new
  end

  # GET /office_spaces/1/edit
  def edit
  end

  # POST /office_spaces
  # POST /office_spaces.json
  def create
    @office_space = OfficeSpace.new(office_space_params)

    respond_to do |format|
      if @office_space.save
        format.html { redirect_to @office_space, notice: 'Office space was successfully created.' }
        format.json { render :show, status: :created, location: @office_space }
      else
        format.html { render :new }
        format.json { render json: @office_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /office_spaces/1
  # PATCH/PUT /office_spaces/1.json
  def update
    respond_to do |format|
      if @office_space.update(office_space_params)
        format.html { redirect_to @office_space, notice: 'Office space was successfully updated.' }
        format.json { render :show, status: :ok, location: @office_space }
      else
        format.html { render :edit }
        format.json { render json: @office_space.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /office_spaces/1
  # DELETE /office_spaces/1.json
  def destroy
    @office_space.destroy
    respond_to do |format|
      format.html { redirect_to office_spaces_url, notice: 'Office space was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_office_space
      @office_space = OfficeSpace.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def office_space_params
      params.require(:office_space).permit(:name, :address, :zip, :city, :description)
    end
end
