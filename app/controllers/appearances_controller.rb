class AppearancesController < ApplicationController

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.create(:name => params[:name])

    if @appearance.episode.
  end


end
