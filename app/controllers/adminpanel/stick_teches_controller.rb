class Adminpanel::StickTechesController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @stick_tech = StickTech.find(:first)
  end

  def edit
    @stick_tech = StickTech.find(:first)
  end

  def update
    @stick_tech = StickTech.find(params[:id])
    if @stick_tech.update_attributes(params[:stick_tech])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end