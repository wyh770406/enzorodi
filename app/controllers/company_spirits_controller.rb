class CompanySpiritsController < ApplicationController
  def index
    @company_spirit = CompanySpirit.find(:first)
  end

end