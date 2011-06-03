class Adminpanel::CompanyHistoriesController < ApplicationController
  before_filter :admin_required
  layout "admin"
  def index
    @company_history = CompanyHistory.find(:first)
  end

  def edit
    @company_history = CompanyHistory.find(:first)
  end

  def update
    @company_history = CompanyHistory.find(params[:id])
    if @company_history.update_attributes(params[:company_history])

      redirect_to :action => 'index'
    else
      render :action => 'edit'
    end
  end
end