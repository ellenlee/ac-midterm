class DisastersController < ApplicationController
  def index
    @disasters = Disaster.all
  end
end
