class DownloadsController < ApplicationController
  def index

      @downloads = Download.find(:all,:order=>"created_at DESC")

  end
end