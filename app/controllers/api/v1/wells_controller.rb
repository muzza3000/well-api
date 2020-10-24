class Api::V1::WellsController < Api::V1::BaseController
  def index
    @wells = policy_scope(Well)
  end
end