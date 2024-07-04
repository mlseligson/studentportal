class CapstonesController < ApplicationController
  before_action :set_capstone, only: %i[ show update destroy ]

  # GET /capstones
  # GET /capstones.json
  def index
    @capstones = Capstone.all
  end

  # GET /capstones/1
  # GET /capstones/1.json
  def show
  end

  # POST /capstones
  # POST /capstones.json
  def create
    @capstone = Capstone.new(capstone_params)

    if @capstone.save
      render :show, status: :created, location: @capstone
    else
      render json: @capstone.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /capstones/1
  # PATCH/PUT /capstones/1.json
  def update
    if @capstone.update(capstone_params)
      render :show, status: :ok, location: @capstone
    else
      render json: @capstone.errors, status: :unprocessable_entity
    end
  end

  # DELETE /capstones/1
  # DELETE /capstones/1.json
  def destroy
    @capstone.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capstone
      @capstone = Capstone.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def capstone_params
      params.require(:capstone).permit(:name, :description, :url)
    end
end
