class StickTechesController < ApplicationController
  def index
    @stick_tech = StickTech.find(:first)
  end

end