class CompanyHistoriesController < ApplicationController
  def index
    @company_history = CompanyHistory.find(:first)
  end

end