class StakeholdersController < ApplicationController
  before_action :set_stakeholder, only: [:show, :update, :destroy]

  # GET /stakeholders
  def index
    @stakeholders = Stakeholder.all

    render json: @stakeholders
  end

  # GET /stakeholders/1
  def show
    render json: @stakeholder
  end

  # POST /stakeholders
  def create
    @stakeholder = Stakeholder.new(stakeholder_params)

    if @stakeholder.save
      render json: @stakeholder, status: :created, location: @stakeholder
    else
      render json: @stakeholder.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stakeholders/1
  def update
    if @stakeholder.update(stakeholder_params)
      render json: @stakeholder
    else
      render json: @stakeholder.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stakeholders/1
  def destroy
    @stakeholder.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stakeholder
      @stakeholder = Stakeholder.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stakeholder_params
      params.require(:stakeholder).permit(:name, :image, :organisation, :role, :tags, :notes)
    end
end
