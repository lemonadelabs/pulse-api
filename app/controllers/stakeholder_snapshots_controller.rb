class StakeholderSnapshotsController < ApplicationController
  before_action :set_stakeholder_snapshot, only: [:show, :update, :destroy]

  # GET /stakeholder_snapshots
  def index
    @stakeholder_snapshots = StakeholderSnapshot.all

    render json: @stakeholder_snapshots
  end

  # GET /stakeholder_snapshots/1
  def show
    render json: @stakeholder_snapshot
  end

  # POST /stakeholder_snapshots
  def create
    @stakeholder_snapshot = StakeholderSnapshot.new(stakeholder_snapshot_params)

    if @stakeholder_snapshot.save
      render json: @stakeholder_snapshot, status: :created, location: @stakeholder_snapshot
    else
      render json: @stakeholder_snapshot.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /stakeholder_snapshots/1
  def update
    if @stakeholder_snapshot.update(stakeholder_snapshot_params)
      render json: @stakeholder_snapshot
    else
      render json: @stakeholder_snapshot.errors, status: :unprocessable_entity
    end
  end

  # DELETE /stakeholder_snapshots/1
  def destroy
    @stakeholder_snapshot.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stakeholder_snapshot
      @stakeholder_snapshot = StakeholderSnapshot.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def stakeholder_snapshot_params
      params.require(:stakeholder_snapshot).permit(:references, :references, :week, :power, :support, :vital)
    end
end
