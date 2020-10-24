class Api::V1::WellsController < Api::V1::BaseController
  before_action :set_well, only: [ :show ]

  def index
    @wells = policy_scope(Well)
  end

  def show
  end

  private

  def set_well
    @well = Well.find(params[:id])
    authorize @well  # For Pundit
  end
end