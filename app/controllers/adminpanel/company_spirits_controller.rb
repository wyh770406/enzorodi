class Adminpanel::CompanySpiritsController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @company_spirit = CompanySpirit.find(:first)
  end

  def edit
    @company_spirit = CompanySpirit.find(:first)
  end

  def update
    @company_spirit = CompanySpirit.find(params[:id])
    if @company_spirit.update_attributes(params[:company_spirit])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end