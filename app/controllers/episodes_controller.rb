class EpisodesController < ApplicationController

  def index
    @episodes = Episode.all
  end

  def new
  end

  def create
    @episode = Episode.new(episode_params)
  end


  private

  def episode_params
    params.require(:episode).permit(:date, :number)
  end

end
