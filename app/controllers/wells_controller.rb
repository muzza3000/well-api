class WellsController < ApplicationController
  def index
    @wells = policy_scope(Well)
  end
end
