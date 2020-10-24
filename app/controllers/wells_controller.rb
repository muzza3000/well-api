class WellsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @wells = policy_scope(Well)
  end
end
