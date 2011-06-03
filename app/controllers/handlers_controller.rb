class HandlersController < ApplicationController
  def index
    @handlers = Handler.find(:all)
  end
end